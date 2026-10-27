.class public Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# instance fields
.field public color:I

.field public icon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 21
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;-><init>()V

    .line 22
    .local v0, "info":Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    iput-object p0, v0, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 23
    return-object v0
.end method


# virtual methods
.method public applyTo(Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 17
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->color:I

    iput v0, p1, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->color:I

    .line 18
    return-void
.end method
