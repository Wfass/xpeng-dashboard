.class final Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;
.super Lorg/chromium/net/w$b;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UrlRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-direct {p0}, Lorg/chromium/net/w$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;)V
    .locals 0

    .line 961
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;-><init>(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFailed(Lorg/chromium/net/w;Lorg/chromium/net/x;Lorg/chromium/net/e;)V
    .locals 0

    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 1062
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "CronetDataSource"

    const-string p2, "onFailed: "

    .line 1064
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    instance-of p1, p3, Lorg/chromium/net/l;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/l;

    .line 1066
    invoke-virtual {p1}, Lorg/chromium/net/l;->a()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1068
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 1070
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1072
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadCompleted(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    .line 1043
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 1044
    monitor-exit p0

    return-void

    .line 1046
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 967
    monitor-exit p0

    return-void

    .line 969
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/w;

    .line 970
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$200(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 971
    invoke-virtual {p2}, Lorg/chromium/net/x;->b()I

    move-result v3

    .line 972
    iget v1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0x133

    if-eq v3, v1, :cond_1

    const/16 v1, 0x134

    if-ne v3, v1, :cond_2

    .line 975
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    new-instance p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 978
    invoke-virtual {p2}, Lorg/chromium/net/x;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 980
    invoke-virtual {p2}, Lorg/chromium/net/x;->e()Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    .line 975
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 983
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    monitor-exit p0

    return-void

    .line 987
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$500(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 988
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$600(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)V

    .line 991
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    .line 992
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$700(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget v1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne v1, v2, :cond_4

    const/16 v1, 0x12e

    if-ne v3, v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 998
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$800(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 999
    invoke-virtual {p1}, Lorg/chromium/net/w;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1000
    monitor-exit p0

    return-void

    .line 1004
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lorg/chromium/net/x;->e()Ljava/util/Map;

    move-result-object p2

    const-string v3, "Set-Cookie"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$900(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez v1, :cond_6

    .line 1005
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1006
    invoke-virtual {p1}, Lorg/chromium/net/w;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    .line 1010
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/net/w;->c()V

    if-nez v1, :cond_7

    .line 1012
    iget p1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne p1, v2, :cond_7

    .line 1015
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {v7, p1, v4, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->cloneData(Landroid/net/Uri;I[B)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    goto :goto_1

    .line 1017
    :cond_7
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->withUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1021
    :goto_1
    :try_start_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/w$a;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1026
    :try_start_6
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$1000(Lorg/chromium/net/w$a;Ljava/lang/String;)V

    .line 1027
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-virtual {p1}, Lorg/chromium/net/w$a;->c()Lorg/chromium/net/w;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$102(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lorg/chromium/net/w;)Lorg/chromium/net/w;

    .line 1028
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/w;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1029
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 1023
    :try_start_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1024
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponseStarted(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 1

    monitor-enter p0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 1034
    monitor-exit p0

    return-void

    .line 1036
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$1102(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lorg/chromium/net/x;)Lorg/chromium/net/x;

    .line 1037
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSucceeded(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 0

    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1054
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$1202(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Z)Z

    .line 1055
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
