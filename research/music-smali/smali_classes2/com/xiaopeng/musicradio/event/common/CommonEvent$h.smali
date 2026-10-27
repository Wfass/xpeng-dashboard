.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;->a:I

    return v0
.end method
