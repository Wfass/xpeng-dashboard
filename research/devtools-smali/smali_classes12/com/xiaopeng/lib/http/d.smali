.class public Lcom/xiaopeng/lib/http/d;
.super Ljava/lang/Object;
.source "IrdetoUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UL:[Ljava/lang/String;

.field public static final UM:[Ljava/lang/String;

.field private static pl:Lcom/xiaopeng/lib/security/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "accessToken"

    const-string v1, "refreshToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/d;->UL:[Ljava/lang/String;

    .line 20
    const-string v0, "accessToken"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/d;->UM:[Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/xiaopeng/lib/security/a/a;->op()Lcom/xiaopeng/lib/security/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/d;->pl:Lcom/xiaopeng/lib/security/a;

    .line 30
    return-void
.end method

.method public static a([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcom/xiaopeng/lib/http/d;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/a;->a([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
