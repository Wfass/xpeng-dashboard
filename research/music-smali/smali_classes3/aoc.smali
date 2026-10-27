.class public Laoc;
.super Ljava/lang/Object;
.source "_DataLogHostHelper.java"


# static fields
.field private static a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Laoc;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    .line 19
    sget-object v0, Laoc;->a:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Laoc;->b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Laoc;->b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;I)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Laoc;->b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;I)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Laoc;->b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 129
    new-instance v9, Laoc$1;

    move-object v0, v9

    move-object v1, p5

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Laoc$1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p8

    .line 112
    invoke-static {}, Lanx;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    invoke-static {}, Lanx;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-static {}, Lanx;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 118
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move-object v1, p5

    .line 119
    invoke-static {v5, v0, p5}, Laoc;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "page_id"

    move-object v6, p3

    .line 120
    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "button_id"

    move-object v7, p4

    .line 121
    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 122
    invoke-static/range {v2 .. v7}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    goto :goto_2

    :cond_4
    move-object v6, p3

    move-object v7, p4

    move-object v1, p5

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 124
    invoke-static/range {v2 .. v9}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    :goto_2
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 153
    new-instance v7, Laoc$2;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Laoc$2;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 75
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 79
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 81
    check-cast p2, Ljava/util/Map;

    .line 82
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 85
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Laoc;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method

.method private static b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 28
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_1

    .line 30
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 31
    check-cast p2, Ljava/lang/Number;

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_1

    .line 32
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 33
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_1

    .line 34
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 35
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_1

    .line 36
    :cond_4
    instance-of p1, p2, Ljava/util/HashMap;

    if-eqz p1, :cond_6

    .line 37
    check-cast p2, Ljava/util/HashMap;

    .line 38
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 40
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 41
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Laoc;->b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private static b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 50
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 51
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_1

    .line 52
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 53
    check-cast p2, Ljava/lang/Number;

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_1

    .line 54
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 55
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_1

    .line 56
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 57
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_1

    .line 58
    :cond_4
    instance-of p1, p2, Ljava/util/HashMap;

    if-eqz p1, :cond_6

    .line 59
    check-cast p2, Ljava/util/HashMap;

    .line 60
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 62
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 63
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Laoc;->b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;I)V
    .locals 2

    .line 94
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 95
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object p1

    .line 96
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "_DataLogHost"

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;->toJson()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "sendStatData : %s"

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;I)V
    .locals 2

    .line 103
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 104
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    .line 105
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "_DataLogHost"

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "sendStatData(D) : %s"

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
