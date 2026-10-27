.class Lbmt$7;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 2037
    iput-object p1, p0, Lbmt$7;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "program_list_sign"

    .line 2040
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "program_play_album_id"

    const-wide/16 v1, -0x1

    .line 2041
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2042
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    const-string v1, "program_play_list"

    .line 2043
    invoke-virtual {v0, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbmt$7$1;

    invoke-direct {v1, p0}, Lbmt$7$1;-><init>(Lbmt$7;)V

    .line 2045
    invoke-virtual {v1}, Lbmt$7$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2042
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 2047
    new-instance v0, Lbmt$7$2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lbmt$7$2;-><init>(Lbmt$7;Ljava/lang/String;Ljava/util/List;J)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
