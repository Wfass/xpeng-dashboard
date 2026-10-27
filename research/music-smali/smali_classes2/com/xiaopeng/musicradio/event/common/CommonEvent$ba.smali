.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ba"
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b:I

    .line 366
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b:I

    return v0
.end method
