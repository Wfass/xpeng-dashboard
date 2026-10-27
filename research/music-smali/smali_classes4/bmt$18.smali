.class Lbmt$18;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->rebootPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Z)V
    .locals 0

    .line 929
    iput-object p1, p0, Lbmt$18;->b:Lbmt;

    iput-boolean p2, p0, Lbmt$18;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "program_list_sign"

    .line 932
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "program_play_album_id"

    const-wide/16 v1, -0x1

    .line 933
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, -0x1

    const-string v1, "program_play_state"

    .line 934
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "program_list_page"

    .line 935
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v4, :cond_0

    const-string v4, "_"

    .line 939
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 940
    array-length v4, v2

    if-ne v4, v7, :cond_0

    .line 941
    aget-object v0, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 942
    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v0

    .line 947
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lbmt$18;->a:Z

    if-nez v2, :cond_1

    if-eq v1, v7, :cond_1

    .line 948
    invoke-static {}, Lask;->a()Lask;

    move-result-object v2

    invoke-virtual {v2}, Lask;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v9

    .line 950
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 951
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    const-string v8, "program_play_list_count"

    invoke-virtual {v2, v8}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rebootPlay run: countVal = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " relay = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " page = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " totalPage = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "ProgramModel"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 954
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 955
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v9, v2, :cond_5

    const-string v12, "program_play_list"

    if-nez v9, :cond_3

    .line 959
    invoke-static {}, Larg;->a()Larg;

    move-result-object v13

    invoke-virtual {v13, v12}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 961
    :cond_3
    invoke-static {}, Larg;->a()Larg;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 963
    :goto_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 964
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 967
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 968
    new-instance v9, Lbmt$18$1;

    invoke-direct {v9, p0}, Lbmt$18$1;-><init>(Lbmt$18;)V

    .line 971
    invoke-virtual {v9}, Lbmt$18$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 968
    invoke-static {v8, v9}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_6

    .line 973
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 976
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run: reboot listsize = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 979
    :cond_8
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    const-string v8, "music_play_list"

    invoke-virtual {v2, v8}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lbmt$18$2;

    invoke-direct {v8, p0}, Lbmt$18$2;-><init>(Lbmt$18;)V

    .line 981
    invoke-virtual {v8}, Lbmt$18$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 978
    invoke-static {v2, v8}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 983
    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 987
    :cond_9
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run: playState = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " replay = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v11, Lbmt$18$3;

    move-object v1, v11

    move-object v2, p0

    move v8, v0

    move v9, v10

    invoke-direct/range {v1 .. v9}, Lbmt$18$3;-><init>(Lbmt$18;Ljava/lang/String;ZJLjava/util/List;II)V

    invoke-static {v11}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
