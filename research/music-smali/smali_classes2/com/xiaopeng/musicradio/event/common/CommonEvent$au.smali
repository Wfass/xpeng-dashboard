.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "au"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;->a:I

    return v0
.end method
