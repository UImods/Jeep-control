.class final Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extra:I

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->view:Landroid/view/View;

    iput p2, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->extra:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->extra:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v1, p0, Lcom/ludo/jeepcontrols/KeyboardScrollFocusListener$1;->view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    return-void
.end method
