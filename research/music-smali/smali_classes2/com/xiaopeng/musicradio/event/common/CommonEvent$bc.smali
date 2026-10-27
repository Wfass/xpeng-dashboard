.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bc"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;->a:I

    .line 395
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;->b:I

    return v0
.end method
