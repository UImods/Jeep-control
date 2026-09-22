.class final Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;
.super Ljava/lang/Object;
.source "WidgetMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludo/jeepcontrols/WidgetMapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TileTask"
.end annotation


# instance fields
.field final index:I

.field final out:[Landroid/graphics/Bitmap;

.field final x:I

.field final y:I

.field final z:I


# direct methods
.method constructor <init>(III[Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->z:I

    iput p2, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->x:I

    iput p3, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->y:I

    iput-object p4, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->out:[Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->index:I

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->out:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->index:I

    iget v2, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->z:I

    iget v3, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->x:I

    iget v4, p0, Lcom/ludo/jeepcontrols/WidgetMapHelper$TileTask;->y:I

    invoke-static {v2, v3, v4}, Lcom/ludo/jeepcontrols/WidgetMapHelper;->access$000(III)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    return-void
.end method
