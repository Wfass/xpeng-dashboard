.class public Lbsa;
.super Ljava/lang/Object;
.source "StatUtil.java"


# static fields
.field private static a:Lbrv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    invoke-static {}, Lbsa;->a()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 23
    sget-object v0, Lbsa;->a:Lbrv;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lbsa$1;

    invoke-direct {v0}, Lbsa$1;-><init>()V

    sput-object v0, Lbsa;->a:Lbrv;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, p2, v0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 64
    sget-object v0, Lbsa;->a:Lbrv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lbrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;
    .locals 1

    .line 68
    sget-object v0, Lbsa;->a:Lbrv;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lbrv;->a()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
