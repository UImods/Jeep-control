.class final Lcom/ludo/jeepcontrols/UconnectNativeClient$AwsCreds;
.super Ljava/lang/Object;
.source "UconnectNativeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludo/jeepcontrols/UconnectNativeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AwsCreds"
.end annotation


# instance fields
.field final ak:Ljava/lang/String;

.field final sk:Ljava/lang/String;

.field final st:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectNativeClient$AwsCreds;->ak:Ljava/lang/String;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectNativeClient$AwsCreds;->sk:Ljava/lang/String;

    iput-object p3, p0, Lcom/ludo/jeepcontrols/UconnectNativeClient$AwsCreds;->st:Ljava/lang/String;

    return-void
.end method
