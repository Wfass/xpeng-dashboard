.class public final Lcom/O000000o/O000000o/O000O0OO;
.super Lcom/O000000o/O000000o/O00oOooO;
.source "JsonNull.java"


# static fields
.field public static final O000000o:Lcom/O000000o/O000000o/O000O0OO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O000O0OO;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O000O0OO;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00oOooO;-><init>()V

    return-void
.end method


# virtual methods
.method O000000o()Lcom/O000000o/O000000o/O000O0OO;
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-object v0
.end method

.method synthetic O0000o0O()Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O000O0OO;->O000000o()Lcom/O000000o/O000000o/O000O0OO;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    instance-of p1, p1, Lcom/O000000o/O000000o/O000O0OO;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/O000000o/O000000o/O000O0OO;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
