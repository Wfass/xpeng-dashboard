.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;->f$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->lambda$onResourceReady$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;Landroid/graphics/Bitmap;)V

    return-void
.end method
