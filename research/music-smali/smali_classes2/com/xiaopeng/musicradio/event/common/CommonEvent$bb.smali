.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bb"
.end annotation


# instance fields
.field public final a:Z

.field private b:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->b:I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->b:I

    return v0
.end method
