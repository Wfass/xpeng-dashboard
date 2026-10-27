.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final OooO00o:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0Oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0o0:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o:Landroid/content/Context;

    .line 23
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    .line 27
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    .line 31
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO0OO;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    .line 193
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0o0:Landroid/os/Handler;

    return-void
.end method

.method public static final OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "InfoReceiver"

    const-string v1, "  U\u76d8\u63a5\u5165"

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    const-string v1, "storage"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 232
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 236
    :try_start_0
    const-class v1, Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getPath"

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 238
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    .line 239
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    .line 240
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    new-instance v6, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;

    invoke-direct {v6, v2, v5, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_2
    const-string v1, "android.os.storage.StorageVolume"

    .line 249
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "getPath"

    .line 251
    :try_start_3
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "isRemovable"

    .line 252
    :try_start_4
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    const-class v4, Landroid/os/storage/StorageManager;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "getVolumeState"

    const/4 v6, 0x1

    :try_start_5
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 256
    const-class v5, Landroid/os/storage/StorageManager;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v7, "getVolumeList"

    :try_start_6
    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 257
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 258
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    .line 260
    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 261
    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 262
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 263
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v10, v11, v3

    invoke-virtual {v4, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 264
    new-instance v12, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;

    invoke-direct {v12, v10, v11, v9}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 268
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;

    .line 269
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v3, v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;->OooO00o:Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InfoReceiver"

    invoke-virtual {v1, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean v1, v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;->OooO0OO:Z

    if-eqz v1, :cond_3

    .line 273
    new-instance v1, Ljava/io/File;

    .line 274
    iget-object v2, v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "/tuning_config.json"

    .line 275
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    iget-object p0, v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v0, "/tuning_config.json"

    .line 277
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-nez p0, :cond_5

    .line 284
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "InfoReceiver"

    const-string v1, "U\u76d8\u4e2d\u6ca1\u6709\u914d\u7f6e\u6587\u4ef6"

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 289
    :cond_5
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "\u901a\u8fc7U\u76d8\u6587\u4ef6\u66f4\u65b0\u914d\u7f6e jsonFilePath = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InfoReceiver"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u901a\u8fc7U\u76d8\u6587\u4ef6\u66f4\u65b0\u914d\u7f6e config = "

    .line 291
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InfoReceiver"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;

    invoke-virtual {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    return-object v0
.end method

.method public final declared-synchronized OooO0O0(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final OooO0OO()V
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 5
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0o:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 302
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 303
    iget-object v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 304
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 306
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setSystemVolume(I)V

    .line 308
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "InfoReceiver"

    const-string v3, "  \u6536\u5230\u5e7f\u64ad\uff0c\u8bbe\u7f6e\u7cfb\u7edf\u97f3\u91cf"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_1
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMicVolume()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolume(I)V

    .line 315
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;

    .line 317
    invoke-interface {v3, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;->onVolumeChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 318
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string p2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    :sswitch_1
    const-string p2, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    :sswitch_2
    const-string p2, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    :sswitch_3
    const-string p2, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    :sswitch_4
    const-string p2, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    :sswitch_5
    const-string v0, "com.android.sky.SendHotKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p1, "specialKey"

    .line 25
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x2e8

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2f6

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    .line 37
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 38
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;

    .line 39
    invoke-interface {v1, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;->onSkyworthKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 40
    :cond_4
    monitor-exit p2

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :sswitch_6
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 42
    :cond_5
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 43
    :try_start_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;

    .line 44
    invoke-interface {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;->onScreenChange(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 45
    :cond_6
    monitor-exit p1

    goto/16 :goto_5

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :sswitch_7
    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    .line 47
    :cond_7
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    const-string v0, "audio"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Landroid/media/AudioManager;

    .line 50
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 51
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOoo:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 429
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_9

    return-void

    .line 430
    :cond_9
    :goto_3
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 431
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_b

    const-string p2, "audio"

    .line 432
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    check-cast p2, Landroid/media/AudioManager;

    .line 434
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0OO()V

    goto :goto_5

    .line 439
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 440
    :cond_b
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 441
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_d
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :sswitch_8
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_5

    .line 472
    :cond_e
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0o0:Landroid/os/Handler;

    new-instance p2, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/-$$Lambda$BkYzOA8SBpIoZy549If0HNINv58;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/-$$Lambda$BkYzOA8SBpIoZy549If0HNINv58;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :sswitch_9
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 473
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    .line 474
    :cond_f
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 475
    :try_start_2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;

    .line 476
    invoke-interface {v0, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;->onScreenChange(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 477
    :cond_10
    monitor-exit p1

    goto :goto_5

    :catchall_2
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_11
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_9
        -0x7e02a835 -> :sswitch_8
        -0x73abbf83 -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x437b4c0d -> :sswitch_5
        -0xb473e6e -> :sswitch_4
        0x251fc6cb -> :sswitch_3
        0x259566d1 -> :sswitch_2
        0x45cc07b3 -> :sswitch_1
        0x727c71d1 -> :sswitch_0
    .end sparse-switch
.end method
