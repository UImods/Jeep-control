.class public final Lcom/ludo/jeepcontrols/UconnectDiagnosticView;
.super Landroid/widget/LinearLayout;
.source "UconnectDiagnosticView.java"


# instance fields
.field private final email:Landroid/widget/EditText;

.field private final password:Landroid/widget/EditText;

.field private final result:Landroid/widget/TextView;

.field private final test:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->setOrientation(I)V

    const/16 p2, 0xa

    .line 23
    invoke-direct {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->setPadding(IIII)V

    .line 25
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Uconnect Live Data (READ-ONLY)"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    .line 26
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Primary source for Fuel, Oil Life, Tires, Odometer, Range, and Location. LOCK and UNLOCK use Uconnect only. Climate continues through the official Jeep app Accessibility flow."

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x473f34

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v3

    invoke-virtual {p2, v0, v4, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    .line 28
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->email:Landroid/widget/EditText;

    const-string v3, "Jeep/Uconnect email"

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v4, 0x21

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v4, 0x5

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v4

    new-instance v5, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;

    invoke-direct {v5, v4}, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;-><init>(I)V

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    invoke-static {p1}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->password:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->hasCredentials(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Saved securely \u2014 leave blank to use saved password"

    goto :goto_0

    :cond_1
    const-string v4, "Jeep/Uconnect password"

    :goto_0
    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v1, 0x81

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v4

    new-instance v5, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;

    invoke-direct {v5, v4}, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;-><init>(I)V

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Jeep Security PIN"

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080021

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setId(I)V

    const-string v4, "4-digit Jeep PIN"

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v4, 0x12

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v4, 0x6

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result v4

    new-instance v5, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;

    invoke-direct {v5, v4}, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;-><init>(I)V

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Lcom/ludo/jeepcontrols/PinSaveClickListener;

    invoke-direct {v4, p1, p2}, Lcom/ludo/jeepcontrols/PinSaveClickListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "SAVE JEEP PIN"

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->test:Landroid/widget/Button;

    const-string v1, "CONNECT / REFRESH UCONNECT"

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->result:Landroid/widget/TextView;

    const-string v3, "jeep_controls_vehicle"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "uconnect_last_diagnostic"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->hasCredentials(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    move-object p1, v3

    goto :goto_1

    :cond_2
    const-string p1, "Uconnect credentials saved securely. Press CONNECT / REFRESH UCONNECT to refresh live data."

    goto :goto_1

    :cond_3
    const-string p1, "Not connected yet."

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result p1

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "Accessibility: keep JEEP Controls enabled only for Climate. Fuel, Oil Life, Tires, Odometer, Range, and Location now use Uconnect."

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x473f34

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->dp(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->addView(Landroid/view/View;)V

    .line 34
    new-instance p1, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$1;

    invoke-direct {p1, p0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$1;-><init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->runTest()V

    return-void
.end method

.method static synthetic access$100(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->result:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/Button;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->test:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/EditText;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->password:Landroid/widget/EditText;

    return-object p0
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 63
    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private runTest()V
    .locals 7

    .line 38
    invoke-virtual {p0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 39
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->test:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->result:Landroid/widget/TextView;

    const-string v1, "Refreshing Jeep/Uconnect cloud\u2026 read-only; no vehicle command will be sent."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;-><init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "UconnectReadOnly"

    invoke-direct {v6, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_2
    move-object v1, p0

    .line 43
    iget-object v0, v1, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->result:Landroid/widget/TextView;

    const-string v2, "Enter your Jeep/Uconnect email and password first."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
