.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static OooO0O0:I

.field public static OooO0OO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final OooO0Oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0o0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    .line 8
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0o0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/lang/String;
    .locals 1

    .line 238
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final OooO00o(JI)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const-string v1, "effect_mode.json5"

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "LoadEffectMode"

    const-string p3, "\u5b89\u88c5\u8def\u5f84\u4e0b\u7684\u6ee4\u955c\u914d\u7f6e\u6587\u4ef6"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n            LogTuning.i(TAG, \"\u5b89\u88c5\u8def\u5f84\u4e0b\u7684\u6ee4\u955c\u914d\u7f6e\u6587\u4ef6\")\n            OldCommonUtil.getStringFromFile(path)\n        }"

    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPENGE28A"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x_peng/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/effect_mode_E28A.json5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPENGF30"

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x_peng/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/effect_mode_F30.json5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPENGH93"

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x_peng/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/effect_mode_H93.json5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "effect_mode.json5"

    .line 23
    :goto_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", model: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", carModel: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadEffectMode"

    invoke-virtual {v1, p2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/loostone/libserver/version1/entity/PMConfig;->PRIVATE_KEY:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x9

    if-lt p1, p2, :cond_4

    .line 25
    sget-object p1, Lcom/loostone/libserver/version1/entity/PMConfig;->PRIVATE_KEY:Ljava/lang/String;

    const-string p3, "PRIVATE_KEY"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "key = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadEffectMode"

    invoke-virtual {v1, p2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    invoke-static {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "readAssets2String(path)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/loostone/libserver/version1/entity/PMConfig;->PRIVATE_KEY:Ljava/lang/String;

    const-string p3, "PRIVATE_KEY"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "code"

    .line 28
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "key"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :try_start_0
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;)[B

    move-result-object p1

    .line 230
    invoke-static {p2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x200

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 231
    invoke-static {p1, p2, p3, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o([B[BILjava/lang/String;)[B

    move-result-object p1

    .line 233
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 236
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p3, "decrypt data error :: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "BaseCommonUtil"

    invoke-virtual {p2, p3, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_1
    if-nez p1, :cond_5

    const-string p1, ""

    .line 237
    :cond_5
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p3, "LoadEffectMode"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "load fail"

    goto :goto_2

    :cond_6
    const-string v0, "load success"

    :goto_2
    invoke-virtual {p2, p3, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method

.method public final OooO0O0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0OO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final OooO0OO()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
