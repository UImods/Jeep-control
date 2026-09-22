.class public final Lcom/ludo/jeepcontrols/StatusRefreshRunnable;
.super Ljava/lang/Object;
.source "StatusRefreshRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final pending:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->pending:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "jeep_controls_vehicle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "uconnect_status_timestamp"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectNativeClient;->refreshSaved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SUCCESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/ludo/jeepcontrols/DoorStateSync;->restoreIfNewerThanUconnect(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "uconnect_status_timestamp"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v7, v8, v5

    if-lez v7, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/ludo/jeepcontrols/PhoneJeepDistance;->format(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, " ft"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "UCONNECT_ONLY"

    goto :goto_0

    :cond_1
    const-string v5, "UCONNECT_ONLY"

    :cond_2
    :goto_0
    const-string v3, "SUCCESS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "command_summary"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "Status updated \u2713"

    invoke-static {v0, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status refresh \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ludo/jeepcontrols/CommandReceiver;->scheduleAutoStatusRefresh(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;->pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
