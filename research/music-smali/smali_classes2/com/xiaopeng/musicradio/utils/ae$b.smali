.class public Lcom/xiaopeng/musicradio/utils/ae$b;
.super Ljava/lang/Object;
.source "HomePreInflateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/xiaopeng/musicradio/utils/ae$b;->a:I

    .line 177
    iput p1, p0, Lcom/xiaopeng/musicradio/utils/ae$b;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/xiaopeng/musicradio/utils/ae$b;->a:I

    .line 180
    iput p1, p0, Lcom/xiaopeng/musicradio/utils/ae$b;->a:I

    .line 181
    iput p2, p0, Lcom/xiaopeng/musicradio/utils/ae$b;->b:I

    return-void
.end method
