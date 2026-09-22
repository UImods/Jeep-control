.class public Lcom/ludo/jeepcontrols/CustomizeActivity;
.super Landroid/app/Activity;
.source "CustomizeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeTabHaptic(Landroid/view/View;)V
    .locals 1

    const-string v0, "Lock"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goBack(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CustomizeActivity;->finish()V

    return-void
.end method

.method public goHome(Landroid/view/View;)V
    .locals 1

    const-string v0, "Lock"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CustomizeActivity;->finish()V

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

    const-string v2, "Lock"

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

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
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_customize"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/CustomizeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/CustomizeActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/BadgeManager;->updateUi(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/VehicleTrimManager;->updateUi(Landroid/app/Activity;)V

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

    const-string v2, "Lock"

    invoke-static {p0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

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
