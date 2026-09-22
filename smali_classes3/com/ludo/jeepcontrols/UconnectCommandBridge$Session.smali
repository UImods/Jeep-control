.class final Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;
.super Ljava/lang/Object;
.source "UconnectCommandBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludo/jeepcontrols/UconnectCommandBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation


# instance fields
.field final client:Ljava/lang/Object;

.field final clientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final uid:Ljava/lang/String;

.field final vin:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;->client:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;->clientClass:Ljava/lang/Class;

    .line 48
    iput-object p3, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;->uid:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;->vin:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/ludo/jeepcontrols/UconnectCommandBridge$Session;->services:Ljava/util/List;

    .line 51
    return-void
.end method
