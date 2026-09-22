.class Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;
.super Ljava/lang/Object;
.source "UconnectDiagnosticView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->runTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$enteredPw:Ljava/lang/String;

.field final synthetic val$pw:Ljava/lang/String;

.field final synthetic val$useEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$useEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$pw:Ljava/lang/String;

    iput-object p4, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$enteredPw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    new-instance v0, Lcom/ludo/jeepcontrols/UconnectNativeClient;

    iget-object v1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$useEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$pw:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ludo/jeepcontrols/UconnectNativeClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ludo/jeepcontrols/UconnectNativeClient;->diagnoseAndStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "Uconnect READ-ONLY \u2713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$enteredPw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    iget-object v3, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$useEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$enteredPw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$100(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;-><init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
