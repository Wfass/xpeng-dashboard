.class public Lcom/xiaopeng/musicradio/music/api/bean/ErrorEmptyList;
.super Ljava/util/ArrayList;
.source "ErrorEmptyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public static errorEmpty()Lcom/xiaopeng/musicradio/music/api/bean/ErrorEmptyList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/xiaopeng/musicradio/music/api/bean/ErrorEmptyList<",
            "TT;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/xiaopeng/musicradio/music/api/bean/ErrorEmptyList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/music/api/bean/ErrorEmptyList;-><init>(I)V

    return-object v0
.end method
