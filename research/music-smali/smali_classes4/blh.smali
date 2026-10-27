.class public Lblh;
.super Ljava/lang/Object;
.source "PlayerRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblh$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "lrc"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lblh;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lblh;
    .locals 1

    .line 12
    sget-object v0, Lblh$a;->a:Lblh;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 24
    iget-object v0, p0, Lblh;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lblh;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
