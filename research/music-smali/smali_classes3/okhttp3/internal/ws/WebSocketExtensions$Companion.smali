.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "WebSocketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccc;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v4, v1, :cond_13

    add-int/lit8 v5, v4, 0x1

    .line 107
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const-string v14, "Sec-WebSocket-Extensions"

    invoke-static {v12, v14, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_0

    move v4, v5

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    move v12, v11

    move v11, v10

    move v10, v8

    move v8, v6

    const/4 v6, 0x0

    .line 114
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_12

    const/16 v15, 0x2c

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v4

    move/from16 v16, v6

    .line 115
    invoke-static/range {v14 .. v19}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v14

    const/16 v15, 0x3b

    .line 116
    invoke-static {v4, v15, v6, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v3

    .line 117
    invoke-static {v4, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v3, v13

    const-string v2, "permessage-deflate"

    .line 121
    invoke-static {v6, v2, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v8, :cond_1

    move v12, v13

    :cond_1
    move v6, v3

    :goto_2
    if-ge v6, v14, :cond_10

    .line 127
    invoke-static {v4, v15, v6, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    const/16 v3, 0x3d

    .line 128
    invoke-static {v4, v3, v6, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v3

    .line 129
    invoke-static {v4, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    if-ge v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 131
    invoke-static {v4, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const-string v8, "\""

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v3, v8}, Lkotlin/text/j;->c(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x0

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    .line 133
    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const-string v8, "client_max_window_bits"

    .line 137
    invoke-static {v6, v8, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_3

    move v12, v13

    :cond_3
    if-nez v3, :cond_4

    move-object/from16 v7, v17

    goto :goto_4

    .line 139
    :cond_4
    invoke-static {v3}, Lkotlin/text/j;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v7, v3

    :goto_4
    if-nez v7, :cond_5

    goto :goto_6

    :cond_5
    move v6, v2

    goto :goto_2

    :cond_6
    const-string v8, "client_no_context_takeover"

    .line 142
    invoke-static {v6, v8, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v10, :cond_7

    move v12, v13

    :cond_7
    if-eqz v3, :cond_8

    move v12, v13

    :cond_8
    move v6, v2

    move v10, v13

    goto :goto_2

    :cond_9
    const-string v8, "server_max_window_bits"

    .line 147
    invoke-static {v6, v8, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v9, :cond_a

    move v12, v13

    :cond_a
    if-nez v3, :cond_b

    move-object/from16 v9, v17

    goto :goto_5

    .line 149
    :cond_b
    invoke-static {v3}, Lkotlin/text/j;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v3

    :goto_5
    if-nez v9, :cond_5

    goto :goto_6

    :cond_c
    const-string v8, "server_no_context_takeover"

    .line 152
    invoke-static {v6, v8, v13}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v11, :cond_d

    move v12, v13

    :cond_d
    if-eqz v3, :cond_e

    move v12, v13

    :cond_e
    move v6, v2

    move v11, v13

    goto :goto_2

    :cond_f
    :goto_6
    move v6, v2

    move v12, v13

    goto/16 :goto_2

    :cond_10
    const/16 v17, 0x0

    move v8, v13

    goto/16 :goto_1

    :cond_11
    const/16 v17, 0x0

    move v6, v3

    move v12, v13

    goto/16 :goto_1

    :cond_12
    move v4, v5

    move v6, v8

    move v8, v10

    move v10, v11

    move v11, v12

    goto/16 :goto_0

    .line 171
    :cond_13
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
