.class public Lcom/ludo/jeepcontrols/NotificationActionActivity;
.super Landroid/app/Activity;
.source "NotificationActionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ludo.jeepcontrols.LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "/lock"

    const-string v2, "Lock"

    goto :goto_0

    :cond_0
    const-string v1, "com.ludo.jeepcontrols.UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "/unlock"

    const-string v2, "Unlock"

    :goto_0
    const-wide/16 v3, 0x320

    invoke-static {p0, v2, v3, v4}, Lcom/ludo/jeepcontrols/NotificationTapGate;->accept(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/ludo/jeepcontrols/NotificationCommandQueue;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.ludo.jeepcontrols.PARKED_DIRECTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Location"

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/ParkedDirectionsLauncher;->open(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v4, "Parked Jeep location is not available yet"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.ludo.jeepcontrols.LOCATION_MAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Location"

    const-wide/16 v3, 0x190

    invoke-static {p0, v2, v3, v4}, Lcom/ludo/jeepcontrols/NotificationTapGate;->accept(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->newCommandId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->commandAccepted(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepMapLauncher;->open(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Location Map \u2022 opening Jeep big map\u2026"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "Jeep app unavailable \u2022 open JEEP Controls"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "com.ludo.jeepcontrols.CLIMATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Climate"

    const-wide/16 v3, 0x4b0

    invoke-static {p0, v2, v3, v4}, Lcom/ludo/jeepcontrols/NotificationTapGate;->accept(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->newCommandId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->commandAccepted(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/ClimateSessionState;->isRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Climate already running \u2022 ON"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/ludo/jeepcontrols/PinStore;->hasPin(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ludo/jeepcontrols/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v3, "Open app \u2022 save Jeep Security PIN"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepAppLauncher;->open(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Climate \u2022 STARTING\u2026"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v3, "Jeep app not found \u2022 opening app page"

    invoke-static {p0, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
