.class public final Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final extra:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;->extra:I

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    if-eqz p2, :cond_0

    iget v4, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;->extra:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    new-instance v0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;

    iget v1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener;->extra:I

    invoke-direct {v0, p1, v1}, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
