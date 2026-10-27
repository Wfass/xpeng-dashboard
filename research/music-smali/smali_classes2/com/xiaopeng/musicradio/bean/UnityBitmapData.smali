.class public Lcom/xiaopeng/musicradio/bean/UnityBitmapData;
.super Ljava/lang/Object;
.source "UnityBitmapData.java"


# instance fields
.field public buffer:[B

.field public config:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UnityBitmapData;->buffer:[B

    .line 11
    iput p2, p0, Lcom/xiaopeng/musicradio/bean/UnityBitmapData;->width:I

    .line 12
    iput p3, p0, Lcom/xiaopeng/musicradio/bean/UnityBitmapData;->height:I

    .line 13
    iput p4, p0, Lcom/xiaopeng/musicradio/bean/UnityBitmapData;->config:I

    return-void
.end method
