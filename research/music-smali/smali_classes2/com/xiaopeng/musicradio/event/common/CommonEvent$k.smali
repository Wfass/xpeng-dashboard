.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a:I

    .line 46
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->b:I

    return v0
.end method
