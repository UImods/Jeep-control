.class Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;
.super Ljava/lang/Object;
.source "UconnectCommandBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludo/jeepcontrols/UconnectCommandBridge;->startClimate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 256
    move-object/from16 v1, p0

    const-string v0, "v2"

    const-string v2, "remote"

    .line 257
    nop

    .line 258
    nop

    .line 260
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$000(Landroid/content/Context;)Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;

    move-result-object v4

    .line 261
    iget-object v5, v1, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v4, v5}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$200(Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    const/4 v6, 0x4

    new-array v7, v6, [[Ljava/lang/String;

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "ROHVACON"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v12, 0x2

    aput-object v2, v9, v12

    aput-object v9, v7, v11

    new-array v9, v8, [Ljava/lang/String;

    const-string v13, "ROCOMFORTON"

    aput-object v13, v9, v11

    aput-object v0, v9, v10

    aput-object v2, v9, v12

    aput-object v9, v7, v10

    new-array v9, v8, [Ljava/lang/String;

    const-string v13, "ROPRECOND"

    aput-object v13, v9, v11

    const-string v13, "v1"

    aput-object v13, v9, v10

    aput-object v2, v9, v12

    aput-object v9, v7, v12

    new-array v9, v8, [Ljava/lang/String;

    const-string v13, "ACV"

    aput-object v13, v9, v11

    aput-object v0, v9, v10

    aput-object v2, v9, v12

    aput-object v9, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 270
    move-object v0, v3

    move-object v8, v0

    move v2, v11

    :goto_0
    if-ge v2, v6, :cond_1

    :try_start_1
    aget-object v9, v7, v2

    .line 271
    aget-object v13, v9, v11

    invoke-static {v4, v13}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$300(Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v13, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    :try_start_2
    aget-object v13, v9, v11

    aget-object v14, v9, v10

    aget-object v15, v9, v12

    invoke-static {v4, v13, v14, v15, v5}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$400(Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    aget-object v2, v9, v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    move-object v3, v8

    goto :goto_2

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    :try_start_3
    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$500(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v8

    goto :goto_4

    .line 270
    :cond_1
    move-object v2, v3

    move-object v3, v8

    .line 280
    :goto_2
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    :try_start_4
    const-string v0, "No compatible Uconnect climate service"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 281
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 283
    :cond_2
    :goto_3
    goto :goto_5

    .line 281
    :catchall_3
    move-exception v0

    move-object v2, v3

    .line 282
    :goto_4
    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectCommandBridge;->access$500(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_5
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    new-instance v4, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1$1;-><init>(Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, v1, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/ludo/jeepcontrols/UconnectCommandBridge$1;->val$ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 301
    :cond_3
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 302
    :goto_6
    return-void
.end method
