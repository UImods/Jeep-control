.class public Lcom/ludo/jeepcontrols/CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommandReceiver.java"


# static fields
.field public static final ACTION_CLIMATE:Ljava/lang/String; = "com.ludo.jeepcontrols.CLIMATE"

.field public static final ACTION_LOCK:Ljava/lang/String; = "com.ludo.jeepcontrols.LOCK"

.field public static final ACTION_REFRESH:Ljava/lang/String; = "com.ludo.jeepcontrols.REFRESH_STATUS"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.ludo.jeepcontrols.UNLOCK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->sendUconnectOnly(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SUCCESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PENDING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p2}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->rememberDoorState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string v0, "SUCCESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Locked \u2713"

    goto/16 :goto_0

    :cond_2
    const-string v0, "Unlocked \u2713"

    goto/16 :goto_0

    :cond_3
    const-string v0, "PENDING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2022 accepted \u2713 \u2022 awaiting Uconnect confirmation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "LOCAL_WAIT:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please wait \u2022 try again in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "RATE_LIMIT:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vehicle busy \u2022 try again in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "RATE_LIMIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Vehicle busy \u2022 wait 60 sec before retrying"

    goto :goto_0

    :cond_8
    const-string v0, "DOOR_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Could not lock \u2022 close all doors and trunk"

    goto :goto_0

    :cond_9
    const-string v0, "VEHICLE_OFFLINE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Vehicle offline \u2022 try again later"

    goto :goto_0

    :cond_a
    const-string v0, "SETUP_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Open app \u2022 secure setup required"

    goto :goto_0

    :cond_b
    const-string v0, "NETWORK_ERROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Network error \u2022 try again"

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_d
    return-void

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_e
    return-void
.end method

.method public static performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/JeepHaptics;->accepted(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static scheduleAutoStatusRefresh(Landroid/content/Context;)V
    .locals 12

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "jeep_controls_vehicle"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_status_due_elapsed"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    return-void

    :cond_0
    const-wide/32 v5, 0xea60

    add-long v7, v1, v5

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ludo/jeepcontrols/CommandReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.ludo.jeepcontrols.AUTO_STATUS_REFRESH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x61

    const v5, 0xc000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private static scheduleCooldownExpiry(Landroid/content/Context;J)V
    .locals 6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ludo/jeepcontrols/CommandReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ludo.jeepcontrols.COOLDOWN_EXPIRED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x63

    const v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static scheduleStatusRefresh(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ludo/jeepcontrols/CommandReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ludo.jeepcontrols.STATUS_REFRESH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x62

    const v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 23
    if-nez p0, :cond_0

    const-string p0, "No response"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v6, "jeep_notification_haptic"

    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.ludo.jeepcontrols.REFRESH_STATUS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.ludo.jeepcontrols.STATUS_REFRESH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.ludo.jeepcontrols.AUTO_STATUS_REFRESH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Refreshing vehicle status\u2026"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CommandReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;

    invoke-direct {v2, p1, v0}, Lcom/ludo/jeepcontrols/StatusRefreshRunnable;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    const-string v0, "com.ludo.jeepcontrols.COOLDOWN_EXPIRED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    invoke-static {p1, v2, v3}, Lcom/ludo/jeepcontrols/CommandReceiver;->scheduleCooldownExpiry(Landroid/content/Context;J)V

    return-void

    :cond_3
    const-string v0, "Ready for next command \u2713"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    const-string v0, "com.ludo.jeepcontrols.CLIMATE_SESSION_EXPIRED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/ludo/jeepcontrols/ClimateSessionState;->clear(Landroid/content/Context;)V

    return-void

    :cond_5
    const-string v0, "com.ludo.jeepcontrols.LOCATION_MAP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepMapLauncher;->open(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Location Map \u2022 opening Jeep big map\u2026"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "Jeep app unavailable \u2022 open JEEP Controls"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, "com.ludo.jeepcontrols.CLIMATE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/ludo/jeepcontrols/ClimateSessionState;->isRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Climate already running \u2022 ON"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {p1}, Lcom/ludo/jeepcontrols/PinStore;->hasPin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ludo/jeepcontrols/MainActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Open app \u2022 save Jeep Security PIN"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {p1}, Lcom/ludo/jeepcontrols/JeepAppLauncher;->open(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Climate \u2022 STARTING\u2026"

    goto :goto_0

    :cond_a
    const-string v0, "Jeep app not found \u2022 opening app page"

    :goto_0
    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_b
    const-string v0, "com.ludo.jeepcontrols.LOCK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "/lock"

    goto :goto_1

    :cond_c
    const-string v1, "com.ludo.jeepcontrols.UNLOCK"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "/unlock"

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    .line 14
    :goto_1
    if-nez v1, :cond_e

    return-void

    .line 15
    :cond_e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "Lock"

    goto :goto_2

    :cond_f
    const-string p2, "Unlock"

    .line 16
    :goto_2
    if-eqz v6, :cond_11

    const-wide/16 v4, 0x320

    invoke-static {p1, p2, v4, v5}, Lcom/ludo/jeepcontrols/NotificationTapGate;->accept(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1, p2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    return-void

    :cond_11
    invoke-static {p1}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_12

    const-string v0, "Command cooldown active \u2022 wait for timer"

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {p1}, Lcom/ludo/jeepcontrols/CommandClient;->setDefaultCooldown(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/ludo/jeepcontrols/CommandReceiver;->scheduleCooldownExpiry(Landroid/content/Context;J)V

    :goto_3
    invoke-static {}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->newCommandId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->commandAccepted(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2022 command sent \u2713"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ludo/jeepcontrols/CommandReceiver;->scheduleStatusRefresh(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CommandReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 17
    invoke-static {p1, v1, p2, v5}, Lcom/ludo/jeepcontrols/NotificationCommandQueue;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 22
    return-void
.end method
