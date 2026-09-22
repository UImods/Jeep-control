.class Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;
.super Ljava/lang/Object;
.source "UconnectCommandBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$corr:Ljava/lang/String;

.field final synthetic val$err:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 288
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$corr:Ljava/lang/String;

    iput-object p3, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$err:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$corr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$cmd:Ljava/lang/String;

    const-string v2, "Uconnect accepted"

    iget-object v3, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$corr:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    const-string v1, "Climate \u2022 Uconnect accepted \u2713"

    invoke-static {v0, v1}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$700(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uconnect fallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->val$err:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "CLIMATE"

    invoke-static {v0, v3, v1, v2}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    const-string v1, "Climate \u2022 using Jeep app fallback"

    invoke-static {v0, v1}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$700(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;->this$0:Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;

    iget-object v0, v0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$800(Landroid/content/Context;)V

    .line 298
    :goto_0
    return-void
.end method
