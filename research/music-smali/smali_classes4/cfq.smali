.class public Lcfq;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcfq$a;
    }
.end annotation


# static fields
.field private static final a:Lcfq;

.field private static final b:Lcfq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcfq;

    invoke-direct {v0}, Lcfq;-><init>()V

    sput-object v0, Lcfq;->a:Lcfq;

    .line 24
    new-instance v0, Lcfq$a;

    sget-object v1, Lcfq;->a:Lcfq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcfq$a;-><init>(Lcfq;)V

    sput-object v0, Lcfq;->b:Lcfq$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lcfq;->b:Lcfq$a;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "akey"

    invoke-virtual {v0, v1, p0}, Lcfq$a;->putByteArray(Ljava/lang/String;[B)V

    .line 28
    sget-object p0, Lcfq;->b:Lcfq$a;

    invoke-virtual {p0}, Lcfq$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lcfq;->b:Lcfq$a;

    const-string v1, "aKey"

    invoke-virtual {v0, v1, p0}, Lcfq$a;->putByteArray(Ljava/lang/String;[B)V

    .line 34
    sget-object p0, Lcfq;->b:Lcfq$a;

    invoke-virtual {p0}, Lcfq$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
