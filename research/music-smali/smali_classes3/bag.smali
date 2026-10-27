.class public Lbag;
.super Lbah;
.source "MusicLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbag$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbah;-><init>()V

    return-void
.end method

.method public static a()Lbag;
    .locals 1

    .line 20
    sget-object v0, Lbag$a;->a:Lbag;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "music_login_uid_cache"

    return-object v0
.end method
