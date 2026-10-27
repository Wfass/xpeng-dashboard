.class Lbij$2;
.super Laxz;
.source "MsPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbij;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbij;


# direct methods
.method constructor <init>(Lbij;Ljava/lang/String;IILjava/util/List;I)V
    .locals 6

    .line 203
    iput-object p1, p0, Lbij$2;->a:Lbij;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Ljava/lang/String;IILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
