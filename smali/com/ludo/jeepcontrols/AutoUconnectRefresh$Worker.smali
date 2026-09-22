.class final Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Worker;
.super Ljava/lang/Object;
.source "AutoUconnectRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Worker;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Worker;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/ludo/jeepcontrols/UconnectNativeClient;->refreshSaved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "connected"

    invoke-static {v1, v2}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "error"

    invoke-static {v1, v2}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-static {v1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "error"

    invoke-static {v1, v3}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->finish()V

    new-instance v2, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Ui;

    invoke-direct {v2, v0}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Ui;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
