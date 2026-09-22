.class public Lcom/ludo/jeepcontrols/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ludo/jeepcontrols/ClimateSessionState;->clear(Landroid/content/Context;)V

    const-string v0, "Ready for next command \u2713"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
