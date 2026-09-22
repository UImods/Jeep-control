.class public final Lcom/ludo/jeepcontrols/PinSaveClickListener;
.super Ljava/lang/Object;
.source "PinSaveClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final field:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->field:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ludo/jeepcontrols/PinStore;->save(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->field:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "Jeep PIN saved securely \u2713"

    goto :goto_0

    :cond_0
    const-string v2, "Enter exactly 4 digits"

    :goto_0
    iget-object v1, p0, Lcom/ludo/jeepcontrols/PinSaveClickListener;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
