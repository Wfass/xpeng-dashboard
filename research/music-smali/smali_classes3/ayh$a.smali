.class Layh$a;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

.field c:I

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method public constructor <init>(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p1, p0, Layh$a;->a:I

    .line 489
    iput-object p2, p0, Layh$a;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    .line 490
    iput p3, p0, Layh$a;->c:I

    .line 491
    iput-object p4, p0, Layh$a;->d:Ljava/lang/String;

    .line 492
    iput p5, p0, Layh$a;->e:I

    return-void
.end method
