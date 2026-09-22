.class Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;
.super Ljava/lang/Object;
.source "UconnectDiagnosticView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

.field final synthetic val$ok:Z

.field final synthetic val$out:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 49
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->val$out:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$100(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->val$out:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$200(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    iget-boolean v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->val$ok:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$300(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->this$0:Lcom/ludo/jeepcontrols/UconnectDiagnosticView;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectDiagnosticView;->access$300(Lcom/ludo/jeepcontrols/UconnectDiagnosticView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Saved securely \u2014 leave blank to use saved password"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAll(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :catchall_1
    :try_start_2
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2$1;->this$1:Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectDiagnosticView$2;->val$c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_0
    return-void
.end method
