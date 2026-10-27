.class Lbrave/propagation/Propagation$KeyFactory$1;
.super Ljava/lang/Object;
.source "Propagation.java"

# interfaces
.implements Lbrave/propagation/Propagation$KeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/Propagation$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbrave/propagation/Propagation$KeyFactory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lbrave/propagation/Propagation$KeyFactory$1;->create(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "StringKeyFactory{}"

    return-object v0
.end method
