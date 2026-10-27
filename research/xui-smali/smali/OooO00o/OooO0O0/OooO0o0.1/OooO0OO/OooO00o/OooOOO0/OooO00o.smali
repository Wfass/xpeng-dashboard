.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static OooO0O0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(JI)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/32 v0, 0x30d41

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v1, "vendor/tvconfig/loostone/environmental_sound.json"

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const-string v2, "environmental_sound.json"

    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "EnvironmentalSound"

    const-string p3, "\u5b89\u88c5\u8def\u5f84\u4e0b\u914d\u7f6e\u73af\u5883\u97f3\u6548"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n            LogTuning.i(TAG, \"\u5b89\u88c5\u8def\u5f84\u4e0b\u914d\u7f6e\u73af\u5883\u97f3\u6548\")\n\n            OldCommonUtil.getStringFromFile(path)\n        }"

    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_1
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "EnvironmentalSound"

    invoke-virtual {v1, v2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v1, 0x61a80

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    const-string p1, "byd/scene_effect/environmental_sound.json"

    goto :goto_1

    :cond_2
    const-wide/32 v1, 0x30d40

    cmp-long p3, p1, v1

    if-nez p3, :cond_3

    const-string p1, "skyworth_a/scene_effect/environmental_sound.json"

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const-string p1, "skyworth_b/scene_effect/environmental_sound.json"

    goto :goto_1

    :cond_4
    const-wide/32 v0, 0x30d42

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    const-string p1, "skyworth_c/scene_effect/environmental_sound.json"

    goto :goto_1

    :cond_5
    const-string p1, "environmental_sound.json"

    .line 42
    :goto_1
    invoke-static {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n            LogTuning.i(TAG, \"channel: $channel, model: $model\")\n\n            path = when (channel) {\n                // \u6bd4\u4e9a\u8fea\u6e20\u9053\n                Channel.BYD.BYD_A -> {\n                    \"byd/scene_effect/environmental_sound.json\"\n                }\n\n                // \u521b\u7ef4KO\u65b9\u6848-\u56fd\u5185\n                Channel.SkyWorth.SKYWORTH_A -> {\n                    \"skyworth_a/scene_effect/environmental_sound.json\"\n                }\n\n                // \u521b\u7ef4SO\u65b9\u6848-\u6d77\u5916\n                Channel.SkyWorth.SKYWORTH_B -> {\n                    \"skyworth_b/scene_effect/environmental_sound.json\"\n                }\n\n                // \u521b\u7ef4\u9177\u6c83\u667a\u884c - SO\u65b9\u6848\n                Channel.SkyWorth.SKYWORTH_C -> {\n                    \"skyworth_c/scene_effect/environmental_sound.json\"\n                }\n\n                else -> {\n                    \"environmental_sound.json\"\n                }\n            }\n\n            ResourceUtils.readAssets2String(path)\n        }"

    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method
