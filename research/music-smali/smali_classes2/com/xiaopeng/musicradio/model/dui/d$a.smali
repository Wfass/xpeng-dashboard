.class Lcom/xiaopeng/musicradio/model/dui/d$a;
.super Ljava/lang/Object;
.source "DuiFmModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/dui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/xiaopeng/musicradio/model/dui/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/d;-><init>(Lcom/xiaopeng/musicradio/model/dui/d$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/model/dui/d$a;->a:Lcom/xiaopeng/musicradio/model/dui/d;

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/musicradio/model/dui/d;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/musicradio/model/dui/d$a;->a:Lcom/xiaopeng/musicradio/model/dui/d;

    return-object v0
.end method
