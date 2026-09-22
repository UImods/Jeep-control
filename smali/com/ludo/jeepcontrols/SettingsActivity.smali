.class public Lcom/ludo/jeepcontrols/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public goBack(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/SettingsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_settings_secure"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/SettingsActivity;->setContentView(I)V

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ludo/jeepcontrols/SecureStore;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public savePin(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/ludo/jeepcontrols/PinSaveClickListener;

    invoke-direct {v1, p0, v0}, Lcom/ludo/jeepcontrols/PinSaveClickListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v1, p1}, Lcom/ludo/jeepcontrols/PinSaveClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public saveSetup(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/ludo/jeepcontrols/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/ludo/jeepcontrols/SecureStore;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_0

    const-string v2, "Setup saved securely"

    goto :goto_0

    :cond_0
    const-string v2, "Check Worker URL and token"

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
