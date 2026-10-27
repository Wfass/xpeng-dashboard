.class public Lcom/xiaopeng/musicradio/common/m;
.super Ljava/lang/Object;
.source "UrlConfigManager.java"


# static fields
.field private static a:Lcom/xiaopeng/musicradio/common/a;

.field private static b:Lcom/xiaopeng/musicradio/common/a;

.field private static c:Lcom/xiaopeng/musicradio/common/i;

.field private static d:Lcom/xiaopeng/musicradio/common/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/musicradio/common/j;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/common/j;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/common/m;->b:Lcom/xiaopeng/musicradio/common/a;

    .line 8
    new-instance v0, Lcom/xiaopeng/musicradio/common/i;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/common/i;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/common/m;->c:Lcom/xiaopeng/musicradio/common/i;

    .line 10
    new-instance v0, Lcom/xiaopeng/musicradio/common/g;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/common/g;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/common/m;->d:Lcom/xiaopeng/musicradio/common/g;

    .line 13
    sget-object v0, Lcom/xiaopeng/musicradio/common/m;->b:Lcom/xiaopeng/musicradio/common/a;

    sput-object v0, Lcom/xiaopeng/musicradio/common/m;->a:Lcom/xiaopeng/musicradio/common/a;

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/common/a;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/musicradio/common/m;->a:Lcom/xiaopeng/musicradio/common/a;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 18
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->c:Lcom/xiaopeng/musicradio/common/i;

    sput-object p0, Lcom/xiaopeng/musicradio/common/m;->a:Lcom/xiaopeng/musicradio/common/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 20
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->d:Lcom/xiaopeng/musicradio/common/g;

    sput-object p0, Lcom/xiaopeng/musicradio/common/m;->a:Lcom/xiaopeng/musicradio/common/a;

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->b:Lcom/xiaopeng/musicradio/common/a;

    sput-object p0, Lcom/xiaopeng/musicradio/common/m;->a:Lcom/xiaopeng/musicradio/common/a;

    :goto_0
    return-void
.end method

.method public static b(I)Lcom/xiaopeng/musicradio/common/a;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 32
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->c:Lcom/xiaopeng/musicradio/common/i;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 34
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->d:Lcom/xiaopeng/musicradio/common/g;

    return-object p0

    .line 36
    :cond_1
    sget-object p0, Lcom/xiaopeng/musicradio/common/m;->b:Lcom/xiaopeng/musicradio/common/a;

    return-object p0
.end method
