.class public Lcom/ludo/jeepcontrols/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public cooldown:Landroid/widget/Chronometer;

.field private status:Landroid/widget/TextView;

.field private tokenField:Landroid/widget/EditText;

.field private urlField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyOptimisticDoorState(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Locked \u2713 (last cmd)"

    goto :goto_0

    :cond_0
    const-string v1, "Unlocked \u2713 (last cmd)"

    :goto_0
    const-string v2, "jeep_controls_vehicle"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "doors"

    const-string v4, "Unavailable"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "last_command_doors"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "optimistic_prev_doors"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "optimistic_prev_last_command_doors"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "optimistic_door_active"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "doors"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_command_doors"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 59
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    return-object v0
.end method

.method private clearOptimisticDoorSnapshot()V
    .locals 3

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "optimistic_prev_doors"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "optimistic_prev_last_command_doors"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "optimistic_door_active"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private rollbackOptimisticDoorState()V
    .locals 7

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "optimistic_door_active"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "optimistic_prev_doors"

    const-string v3, "Unavailable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "optimistic_prev_last_command_doors"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v2, "doors"

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v2, "last_command_doors"

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v2, "optimistic_prev_doors"

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v2, "optimistic_prev_last_command_doors"

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v2, "optimistic_door_active"

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private runCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0, p2}, Lcom/ludo/jeepcontrols/MainActivity;->startCooldown(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainActivity;->status:Landroid/widget/TextView;

    const-string v1, "Command cooldown active \u2022 wait for timer"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ludo/jeepcontrols/CommandClient;->setDefaultCooldown(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/ludo/jeepcontrols/MainActivity;->startCooldown(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainActivity;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2022 Uconnect sending + verifying\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/ludo/jeepcontrols/MainActivity;->applyOptimisticDoorState(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ludo/jeepcontrols/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startCooldown(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/32 v0, 0xea60

    :cond_0
    const-string v2, "Lock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "UNLOCK available in %s"

    goto :goto_0

    :cond_1
    const-string p1, "LOCK available in %s"

    :goto_0
    iget-object v2, p0, Lcom/ludo/jeepcontrols/MainActivity;->cooldown:Landroid/widget/Chronometer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Chronometer;->setCountDown(Z)V

    invoke-virtual {v2, p1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    new-instance v1, Lcom/ludo/jeepcontrols/MainActivity$CooldownTickListener;

    invoke-direct {v1, p0}, Lcom/ludo/jeepcontrols/MainActivity$CooldownTickListener;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    return-void
.end method

.method private text(Ljava/lang/String;FZ)Landroid/widget/TextView;
    .locals 1

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const-string p1, "#B8C0CC"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method public homeTabHaptic(Landroid/view/View;)V
    .locals 1

    const-string v0, "Lock"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public jumpToSection(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$0$com-ludo-jeepcontrols-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity;->urlField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainActivity;->tokenField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ludo/jeepcontrols/SecureStore;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainActivity;->tokenField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const-string p1, "Setup saved securely"

    goto :goto_0

    :cond_0
    const-string p1, "Check Worker URL and token"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method

.method synthetic lambda$onCreate$1$com-ludo-jeepcontrols-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 39
    const-string p1, "Lock"

    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "/lock"

    const-string v0, "Lock"

    invoke-direct {p0, p1, v0}, Lcom/ludo/jeepcontrols/MainActivity;->runCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-ludo-jeepcontrols-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 40
    const-string p1, "Unlock"

    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "/unlock"

    const-string v0, "Unlock"

    invoke-direct {p0, p1, v0}, Lcom/ludo/jeepcontrols/MainActivity;->runCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-ludo-jeepcontrols-MainActivity(Landroid/view/View;)V
    .locals 1

    const-string v0, "Lock"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/JeepAppLauncher;->open(Landroid/content/Context;)Z

    return-void
.end method

.method synthetic lambda$runCommand$4$com-ludo-jeepcontrols-MainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CLIMATE_DIAG:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Climate/HVAC scan \u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ludo/jeepcontrols/MainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "SUCCESS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PENDING"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/MainActivity;->rollbackOptimisticDoorState()V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->rememberDoorState(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/MainActivity;->clearOptimisticDoorSnapshot()V

    :goto_0
    const-string v0, "SUCCESS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Locked \u2713"

    goto/16 :goto_1

    :cond_2
    const-string v0, "Unlocked \u2713"

    goto/16 :goto_1

    :cond_3
    const-string v0, "PENDING"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2022 accepted \u2713 \u2022 waiting for vehicle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "LOCAL_WAIT:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

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

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->startCooldown(Ljava/lang/String;)V

    const-string v0, "RATE_LIMIT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Vehicle busy \u2022 wait 60 sec before retrying"

    goto :goto_1

    :cond_7
    const-string v0, "DOOR_OPEN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Could not lock \u2022 close all doors and trunk"

    goto :goto_1

    :cond_8
    const-string v0, "VEHICLE_OFFLINE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Vehicle offline \u2022 try again later"

    goto :goto_1

    :cond_9
    const-string v0, "NETWORK_ERROR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Network error \u2022 try again"

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/ludo/jeepcontrols/MainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$runCommand$5$com-ludo-jeepcontrols-MainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->start()J

    move-result-wide v1

    invoke-static {v0, p1}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->sendUconnectOnly(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "APP"

    invoke-static {v0, v3, v1, v2}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->finish(Landroid/content/Context;Ljava/lang/String;J)V

    .line 52
    new-instance v0, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ludo/jeepcontrols/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public onBadgeSelected(Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/ludo/jeepcontrols/BadgeManager;->setSelected(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/BadgeManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ludo/jeepcontrols/BadgeManager;->getName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Emblem: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const p1, 0x7f030010

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->setContentView(I)V

    const p1, 0x7f08000e

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity;->status:Landroid/widget/TextView;

    const p1, 0x7f080004

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity;->cooldown:Landroid/widget/Chronometer;

    const p1, 0x7f08001f

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity;->urlField:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/ludo/jeepcontrols/SecureStore;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080020

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity;->tokenField:Landroid/widget/EditText;

    const p1, 0x7f080022

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080021

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const p1, 0x7f080023

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/ludo/jeepcontrols/PinSaveClickListener;

    invoke-direct {v1, p0, v0}, Lcom/ludo/jeepcontrols/PinSaveClickListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080017

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080018

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080019

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08001b

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainMapClickListener;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainMapClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08001c

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainJeepAppClickListener;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainJeepAppClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08001a

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ludo/jeepcontrols/MainRefreshClickListener;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainRefreshClickListener;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08001e

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const p1, 0x7f08001d

    invoke-virtual {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/ludo/jeepcontrols/OpenSettingsClickListener;

    invoke-direct {v1, p0}, Lcom/ludo/jeepcontrols/OpenSettingsClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/BadgeManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->requestPermission(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->requestBluetoothPermission(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/CommandClient;->remainingCooldown(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-string p1, "Lock"

    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/MainActivity;->startCooldown(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "obd_gear_diag_home_visible"

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/PhoneJeepDistance;->requestPermission(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "obd_gear_diag_home_visible"

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/PhoneJeepDistance;->requestPermission(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->request(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/BadgeManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "vehicle_motion_canonical"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "uconnect_range"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fuel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doors"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "last_command_doors"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_connected"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_background_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_fob_last_payload"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_fob_read_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_fob_last_event"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_fob_last_read_ms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_current"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_raw_0510"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_raw_0516"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_candidate_label"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_0510_read_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "obd_gear_0516_read_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_loc_time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_lat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_lon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_accuracy_m"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "park_anchor_lat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "park_anchor_lon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "park_anchor_time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "park_anchor_pending"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onTrimSelected(Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->setSelection(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ludo/jeepcontrols/TrimCore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Vehicle Trim: Auto detection"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vehicle Trim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public openCustomizePage(Landroid/view/View;)V
    .locals 2

    const-string v0, "Lock"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ludo/jeepcontrols/CustomizeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openLocationMap(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/ludo/jeepcontrols/MainMapClickListener;

    invoke-direct {v0, p0}, Lcom/ludo/jeepcontrols/MainMapClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ludo/jeepcontrols/MainMapClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public openSettingsPage(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ludo/jeepcontrols/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleSection(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
