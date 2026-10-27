.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "be"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;->a:I

    return v0
.end method
