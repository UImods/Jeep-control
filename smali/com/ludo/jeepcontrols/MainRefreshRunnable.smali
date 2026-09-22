.class public final Lcom/ludo/jeepcontrols/MainRefreshRunnable;
.super Ljava/lang/Object;
.source "MainRefreshRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/ludo/jeepcontrols/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainRefreshRunnable;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainRefreshRunnable;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ludo/jeepcontrols/UconnectNativeClient;->refreshSaved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const-string v1, "SUCCESS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v3

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "connected"

    invoke-static {v1, v3}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "error"

    invoke-static {v1, v3}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    new-instance v1, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;

    invoke-direct {v1, v0, v2}, Lcom/ludo/jeepcontrols/MainRefreshUiRunnable;-><init>(Lcom/ludo/jeepcontrols/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ludo/jeepcontrols/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
