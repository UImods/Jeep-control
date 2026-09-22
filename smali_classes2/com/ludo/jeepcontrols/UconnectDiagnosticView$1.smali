.class Lcom/ludo/jeepcontrols/UconnectDiagnosticView$1;
.super Ljava/lang/Object;
.source "UconnectDiagnosticView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/UconnectDiagnosticView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;


# direct methods
.method constructor <init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$1;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$1;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {p1}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$000(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)V

    return-void
.end method
