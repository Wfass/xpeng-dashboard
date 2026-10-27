.class Lcom/xiaopeng/musicradio/service/MusicMineService$7;
.super Lbkv;
.source "MusicMineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Landroidx/lifecycle/r;

.field final synthetic e:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;IZLandroidx/lifecycle/r;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->e:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->b:I

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->c:Z

    iput-object p5, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->d:Landroidx/lifecycle/r;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCollectedMusicList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->d:Landroidx/lifecycle/r;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v2, "getCollectedMusicList"

    invoke-static {v1, p1, p2, v2}, Lcom/xiaopeng/musicradio/datalist/e;->a(Lcom/xiaopeng/musicradio/datalist/f;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v1

    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 134
    :cond_2
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result v7

    .line 136
    iget-object v1, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    const/4 v10, 0x1

    if-ge v1, v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v10

    goto :goto_1

    :cond_3
    move v1, v3

    .line 137
    :goto_1
    iget-object v4, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v4, v4, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    add-int/lit8 v6, v4, 0x1

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_6

    const-string v4, "MusicMineService"

    const-string v5, "response: 2 start ====== "

    .line 140
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 141
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 142
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 143
    iget v9, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->b:I

    invoke-static {v8, v9}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_3

    .line 147
    :cond_4
    iget-object v9, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget-wide v12, v9, Lcom/xiaopeng/musicradio/datalist/f;->e:J

    int-to-long v14, v5

    sub-long/2addr v12, v14

    iget-object v9, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v9, v9, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    iget-object v14, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v14, v14, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    mul-int/2addr v9, v14

    int-to-long v14, v9

    sub-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " createTime = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " page = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v12, v12, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " i = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v8, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 150
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string v2, "response: 2 end ====== "

    .line 152
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_6
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v2

    iget v4, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->b:I

    invoke-virtual {v2, v4}, Lbaf;->a(I)Lbae;

    move-result-object v2

    invoke-virtual {v2, v11, v3}, Lbae;->a(Ljava/util/List;Z)V

    .line 155
    iget-object v4, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v9, "getCollectedMusicList"

    move v5, v1

    move-object v8, v11

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object v2

    .line 159
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v3

    iget v4, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->b:I

    invoke-virtual {v3, v4}, Lbcj;->a(I)Lbci;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Lbci;->a(Ljava/util/List;Z)V

    .line 160
    iget-object v3, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->d:Landroidx/lifecycle/r;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    .line 161
    iget-boolean v2, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->c:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 162
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/f;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v2, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    add-int/lit8 v15, v2, 0x1

    const-wide/16 v16, 0x0

    iget-object v2, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    move-object v11, v1

    move/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/xiaopeng/musicradio/datalist/f;-><init>(IIZIJI)V

    .line 163
    iget-object v2, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->e:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iget v3, v0, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->b:I

    invoke-virtual {v2, v1, v10, v3}, Lcom/xiaopeng/musicradio/service/MusicMineService;->getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    :goto_4
    const-string v1, ""

    .line 131
    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$7;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V

    return-void
.end method
