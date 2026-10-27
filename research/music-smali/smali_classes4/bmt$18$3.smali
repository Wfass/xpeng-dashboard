.class Lbmt$18$3;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Ljava/util/List;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lbmt$18;


# direct methods
.method constructor <init>(Lbmt$18;Ljava/lang/String;ZJLjava/util/List;II)V
    .locals 0

    .line 989
    iput-object p1, p0, Lbmt$18$3;->g:Lbmt$18;

    iput-object p2, p0, Lbmt$18$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbmt$18$3;->b:Z

    iput-wide p4, p0, Lbmt$18$3;->c:J

    iput-object p6, p0, Lbmt$18$3;->d:Ljava/util/List;

    iput p7, p0, Lbmt$18$3;->e:I

    iput p8, p0, Lbmt$18$3;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 992
    iget-object v0, p0, Lbmt$18$3;->a:Ljava/lang/String;

    const-string v1, "source"

    const-string v2, "type"

    const/16 v3, 0xa

    const-string v4, "continue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    const-string v7, "headspeech"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0}, Lbmt;->g(Lbmt;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1002
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    const-string v7, "key_cache_headspeach_record"

    invoke-virtual {v0, v7}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v7, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-static {v0, v7}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    .line 1004
    new-instance v7, Lbms$a;

    invoke-direct {v7}, Lbms$a;-><init>()V

    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getChannelId()I

    move-result v0

    int-to-long v8, v0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    :goto_0
    invoke-static {v8, v9}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 1006
    invoke-virtual {v0, v6}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v0

    .line 1007
    invoke-virtual {v0, v6}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    .line 1008
    invoke-virtual {v0, v3}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 1010
    new-instance v3, Lbmt$18$3$1;

    invoke-direct {v3, p0, v0}, Lbmt$18$3$1;-><init>(Lbmt$18$3;Lbms$a;)V

    .line 1021
    iget-boolean v0, p0, Lbmt$18$3;->b:Z

    xor-int/2addr v0, v6

    invoke-virtual {v3, v0}, Lbms;->d(Z)V

    .line 1022
    invoke-virtual {v3, v6}, Lbms;->e(Z)V

    .line 1023
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->c()V

    .line 1025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "news"

    .line 1026
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-static {v0}, Lbrw;->d(Ljava/util/Map;)V

    .line 1030
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-virtual {v0, v3}, Lbmt;->a(Lass;)V

    .line 1031
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->b(Lbmt;Z)Z

    .line 1032
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->c(Lbmt;Z)Z

    goto/16 :goto_6

    .line 1033
    :cond_2
    iget-object v0, p0, Lbmt$18$3;->a:Ljava/lang/String;

    const/4 v7, -0x1

    if-eqz v0, :cond_5

    const-string v8, "reading_album_onkey_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1034
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    const-string v1, "key_cache_one_album_record"

    invoke-virtual {v0, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    const-class v1, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    .line 1036
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 1037
    iget-wide v8, p0, Lbmt$18$3;->c:J

    invoke-virtual {v1, v8, v9}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 1038
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    move v2, v5

    .line 1040
    :goto_1
    iget-object v4, p0, Lbmt$18$3;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1041
    iget-object v4, p0, Lbmt$18$3;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1042
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getTrackId()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_c

    .line 1048
    new-instance v4, Lbms$a;

    invoke-direct {v4}, Lbms$a;-><init>()V

    iget-object v7, p0, Lbmt$18$3;->a:Ljava/lang/String;

    .line 1049
    invoke-virtual {v4, v7}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v4

    .line 1050
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 1051
    invoke-virtual {v0, v6}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    .line 1052
    invoke-virtual {v0, v3}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 1053
    invoke-virtual {v0, v1}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    iget-object v1, p0, Lbmt$18$3;->d:Ljava/util/List;

    .line 1054
    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object v0

    .line 1055
    invoke-virtual {v0, v2}, Lbms$a;->c(I)Lbms$a;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/common/d;->p:Ljava/lang/String;

    .line 1056
    invoke-virtual {v0, v1}, Lbms$a;->c(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    const/16 v1, 0x14

    .line 1057
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 1058
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 1059
    iget-boolean v1, p0, Lbmt$18$3;->b:Z

    xor-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lass;->d(Z)V

    .line 1060
    invoke-virtual {v0, v6}, Lass;->e(Z)V

    .line 1061
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->c()V

    .line 1062
    iget-object v1, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v1, v1, Lbmt$18;->b:Lbmt;

    invoke-virtual {v1, v0}, Lbmt;->a(Lass;)V

    .line 1063
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->b(Lbmt;Z)Z

    .line 1064
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->c(Lbmt;Z)Z

    goto/16 :goto_6

    .line 1067
    :cond_5
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0}, Lbmt;->i(Lbmt;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 1070
    :cond_6
    iget-object v0, p0, Lbmt$18$3;->d:Ljava/util/List;

    if-nez v0, :cond_7

    .line 1071
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->b(Lbmt;Z)Z

    return-void

    .line 1074
    :cond_7
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    iget-wide v8, p0, Lbmt$18$3;->c:J

    invoke-virtual {v0, v8, v9}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v0

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_8

    .line 1077
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v10

    goto :goto_3

    :cond_8
    move-wide v10, v8

    :goto_3
    cmp-long v3, v10, v8

    if-eqz v3, :cond_b

    move v3, v5

    .line 1081
    :goto_4
    iget-object v8, p0, Lbmt$18$3;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 1082
    iget-object v8, p0, Lbmt$18$3;->d:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1083
    invoke-virtual {v8, v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setFromSource(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move v3, v7

    :goto_5
    if-eq v3, v7, :cond_b

    .line 1090
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v7

    .line 1091
    invoke-virtual {v7, v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 1092
    new-instance v8, Lbms$a;

    invoke-direct {v8}, Lbms$a;-><init>()V

    iget-object v9, p0, Lbmt$18$3;->a:Ljava/lang/String;

    .line 1093
    invoke-virtual {v8, v9}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v8

    .line 1094
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 1095
    invoke-virtual {v0, v7}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    iget-object v7, p0, Lbmt$18$3;->d:Ljava/util/List;

    .line 1096
    invoke-virtual {v0, v7}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object v0

    .line 1097
    invoke-virtual {v0, v3}, Lbms$a;->c(I)Lbms$a;

    move-result-object v0

    .line 1098
    invoke-virtual {v0, v6}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    .line 1099
    invoke-virtual {v0, v6}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v0

    iget v3, p0, Lbmt$18$3;->e:I

    .line 1100
    invoke-virtual {v0, v3}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    iget v3, p0, Lbmt$18$3;->f:I

    .line 1101
    invoke-virtual {v0, v3}, Lbms$a;->d(I)Lbms$a;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 1103
    iget-boolean v3, p0, Lbmt$18$3;->b:Z

    xor-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lbms;->d(Z)V

    .line 1104
    invoke-virtual {v0, v6}, Lbms;->e(Z)V

    .line 1105
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v3

    invoke-virtual {v3}, Lbrx;->c()V

    .line 1107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "reading"

    .line 1108
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-static {v3}, Lbrw;->d(Ljava/util/Map;)V

    .line 1111
    iget-object v1, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v1, v1, Lbmt$18;->b:Lbmt;

    invoke-virtual {v1, v0}, Lbmt;->a(Lass;)V

    .line 1112
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0}, Lbmt;->j(Lbmt;)V

    .line 1115
    :cond_b
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->b(Lbmt;Z)Z

    .line 1116
    iget-object v0, p0, Lbmt$18$3;->g:Lbmt$18;

    iget-object v0, v0, Lbmt$18;->b:Lbmt;

    invoke-static {v0, v5}, Lbmt;->c(Lbmt;Z)Z

    :cond_c
    :goto_6
    return-void
.end method
