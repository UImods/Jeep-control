.class final Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;
.super Ljava/lang/Object;
.source "FobBackgroundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludo/jeepcontrols/FobBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;


# direct methods
.method private constructor <init>(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ludo/jeepcontrols/FobBackgroundController;Lcom/ludo/jeepcontrols/FobBackgroundController$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;-><init>(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 76
    const-string v0, "RECONNECTING"

    const-wide/16 v1, 0x1f4

    move-wide v3, v1

    const/4 v8, 0x0

    .line 77
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v5}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 79
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$200(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    const-string v7, "WAITING_BLUETOOTH_PERMISSION"

    invoke-static {v6, v5, v7}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    .line 81
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$400(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    .line 106
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6, v5, v0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$500(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    nop

    .line 86
    :try_start_2
    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    const-string v4, "CONNECTING"

    invoke-static {v3, v5, v4}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$900(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    const/4 v6, 0x1

    .line 91
    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    const-string v4, "FOB_READY"

    invoke-static {v3, v6, v4}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    .line 92
    nop

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$800(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$800(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    invoke-static {}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->start()J

    move-result-wide v9

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$900(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "RFH"

    invoke-static {v3, v6, v9, v10}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->finish(Landroid/content/Context;Ljava/lang/String;J)V

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    if-lt v8, v3, :cond_2

    const/4 v8, 0x0

    invoke-static {}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->start()J

    move-result-wide v9

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1000(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "TCM"

    invoke-static {v3, v6, v9, v10}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->finish(Landroid/content/Context;Ljava/lang/String;J)V

    .line 100
    :cond_2
    const-wide/16 v3, 0xfa

    invoke-static {v3, v4}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$400(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    .line 106
    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v3, v5, v0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    .line 108
    :cond_4
    move-wide v3, v1

    goto :goto_3

    .line 102
    :catchall_0
    move-exception v6

    move-wide v3, v1

    goto :goto_2

    :catchall_1
    move-exception v6

    .line 103
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v7, v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1200(Lcom/ludo/jeepcontrols/FobBackgroundController;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    .line 106
    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v6, v5, v0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    .line 108
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v5}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-static {v3, v4}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$400(J)V

    .line 110
    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto/16 :goto_0

    .line 105
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/FobBackgroundController;)V

    .line 106
    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/FobBackgroundController;

    invoke-static {v2, v5, v0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V

    .line 107
    :cond_6
    throw v1

    .line 113
    :cond_7
    return-void
.end method
