.class public final Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u00089\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008k\u0010lJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000bR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000bR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000bR\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000bR\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000bR\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000bR\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u000bR\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000bR\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u000bR\u0016\u0010\u001a\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u000bR\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000bR\u0016\u0010\u001c\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u000bR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u000bR\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u000bR\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u000bR\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u000bR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u000bR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u000bR\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u000bR\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u000bR\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u000bR\u0016\u0010&\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u000bR\u0016\u0010\'\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u000bR\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u000bR\u0016\u0010)\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u000bR\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u000bR\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u000bR\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008,\u0010\u000bR\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008-\u0010\u000bR\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008.\u0010\u000bR\u0016\u0010/\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008/\u0010\u000bR\u0016\u00100\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00080\u0010\u000bR\u0016\u00101\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00081\u0010\u000bR\u0016\u00102\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00082\u0010\u000bR\u0016\u00103\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00083\u0010\u000bR\u001d\u00109\u001a\u0002048B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u0016\u0010:\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008:\u0010\u000bR\u0016\u0010;\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008;\u0010\u000bR\u0016\u0010<\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008<\u0010\u000bR\u0016\u0010=\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008=\u0010\u000bR\u0016\u0010>\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008>\u0010\u000bR\u0016\u0010?\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008?\u0010\u000bR\u0016\u0010@\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008@\u0010\u000bR\u0016\u0010A\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008A\u0010\u000bR\u0016\u0010B\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008B\u0010\u000bR\u0016\u0010C\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008C\u0010\u000bR\u0016\u0010D\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008D\u0010\u000bR\u0016\u0010E\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008E\u0010\u000bR\u0016\u0010F\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008F\u0010\u000bR\u0016\u0010G\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008G\u0010\u000bR\u0016\u0010H\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u000bR\u0016\u0010I\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008I\u0010\u000bR\u0016\u0010J\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008J\u0010\u000bR\u0016\u0010K\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008K\u0010\u000bR\u0016\u0010L\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008L\u0010\u000bR\u0016\u0010M\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008M\u0010\u000bR\u0016\u0010N\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008N\u0010\u000bR\u0016\u0010O\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008O\u0010\u000bR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008P\u0010\u000bR\u0016\u0010Q\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008Q\u0010\u000bR\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008R\u0010\u000bR\u0016\u0010S\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008S\u0010\u000bR\u0016\u0010T\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008T\u0010\u000bR\u0016\u0010U\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008U\u0010\u000bR\u0016\u0010V\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008V\u0010\u000bR\u0016\u0010W\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008W\u0010\u000bR\u0016\u0010X\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u000bR\u0016\u0010Y\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008Y\u0010\u000bR\u0016\u0010Z\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008Z\u0010\u000bR\u0016\u0010[\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008[\u0010\u000bR\u0016\u0010\\\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\\\u0010\u000bR\u0016\u0010]\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008]\u0010\u000bR\u0016\u0010^\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008^\u0010\u000bR\u0016\u0010_\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008_\u0010\u000bR\u0016\u0010`\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008`\u0010\u000bR\u0016\u0010a\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008a\u0010\u000bR\u0016\u0010b\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008b\u0010\u000bR\u0016\u0010c\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008c\u0010\u000bR\u0016\u0010d\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008d\u0010\u000bR\u0016\u0010e\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008e\u0010\u000bR\u0016\u0010f\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008f\u0010\u000bR\u0016\u0010g\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008g\u0010\u000bR\u0016\u0010h\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008h\u0010\u000bR\u0016\u0010i\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008i\u0010\u000bR\u0016\u0010j\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008j\u0010\u000b\u00a8\u0006m"
    }
    d2 = {
        "Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;",
        "",
        "",
        "keyIndex",
        "Landroid/database/Cursor;",
        "getValue",
        "(I)Landroid/database/Cursor;",
        "value",
        "setValue",
        "(II)I",
        "GET_AEF2_EQ7",
        "I",
        "SET_MUSIC_VOLUME",
        "GET_MAX_MIC_VOLUME",
        "SET_AEF2_ECHO_FEEDBACK",
        "SET_AEF2_EQ8",
        "",
        "TAG",
        "Ljava/lang/String;",
        "GET_MIC_VOLUME_ENABLE",
        "GET_AEF2_EQ4_FREQUENCY",
        "TYPE_GET_REVERB_MODE",
        "TYPE_SET_ECHO",
        "GET_AEF1_REVERB_OUT_GAIN",
        "TYPE_GET_MIC_MAX",
        "SET_AEF2_ECHO_GAIN",
        "GET_AEF1_REVERB_ENABLE",
        "SET_AEF2_ECHO_TYPE",
        "GET_AEF2_ECHO_GAIN",
        "VOLUME_UP",
        "VOLUME_DOWN",
        "GET_AEF2_EQ9_FREQUENCY",
        "SET_AEF2_EQ3",
        "GET_AEF2_REVERB_VOLUME",
        "GET_AEF2_EQ7_FREQUENCY",
        "GET_SUPPORT_ADVANCE_EFFECT",
        "SET_AEF2_EQ9",
        "GET_AEF2_EQ5",
        "SET_AEF2_EQ8_FREQUENCY",
        "TYPE_SET_REVERB_MODE",
        "GET_AEF2_EQ8_FREQUENCY",
        "GET_AEF2_EQ1_FREQUENCY",
        "SET_AEF2_EQ2",
        "GET_MUSIC_VOLUME",
        "GET_AEF2_EQ4",
        "SET_AEF2_EQ1_FREQUENCY",
        "SET_AEF2_EQ5",
        "GET_AEF2_EQ9",
        "SET_AEF2_EQ7_FREQUENCY",
        "GET_AEF2_REVERB_MODE",
        "GET_AEF2_ECHO_TIME",
        "SET_AEF2_REVERB_TIME",
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "volumeAdjustment$delegate",
        "Lkotlin/Lazy;",
        "getVolumeAdjustment",
        "()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "volumeAdjustment",
        "SET_AEF2_EQ4",
        "SET_AEF2_EQ9_FREQUENCY",
        "SET_AEF2_EQ3_FREQUENCY",
        "SET_AEF2_REVERB_ENABLE",
        "GET_MAX_AEF2_REVERB_VOLUME",
        "TYPE_SUPPORT_ADVANCE",
        "SET_SYSTEM_VOLUME",
        "SET_AEF2_EQ6_FREQUENCY",
        "GET_AEF2_ECHO_FEEDBACK",
        "SET_MIC_VOLUME",
        "SET_AEF2_EQ4_FREQUENCY",
        "SET_AEF2_EQ6",
        "GET_AEF2_REVERB_ENABLE",
        "SET_AEF2_REVERB_MODE",
        "SET_AEF2_EQ_ENABLE",
        "GET_AEF2_EQ5_FREQUENCY",
        "GET_SYSTEM_VOLUME",
        "TYPE_GET_ECHO_MAX",
        "SET_AEF1_REVERB_OUT_GAIN",
        "GET_AEF2_EQ1",
        "TYPE_SET_MIC",
        "SET_MIC_VOLUME_ENABLE",
        "SET_AEF2_EQ7",
        "SET_AEF1_REVERB_ENABLE",
        "GET_AEF2_ECHO_ENABLE",
        "SET_AEF2_EQ2_FREQUENCY",
        "SET_AEF2_VOICE_MODE",
        "TYPE_SET_VOICE_MODE",
        "GET_AEF2_EQ6_FREQUENCY",
        "GET_MIC_VOLUME",
        "TYPE_GET_MIC",
        "GET_AEF2_ECHO_TYPE",
        "GET_MAX_AEF1_REVERB_VOLUME",
        "GET_AEF2_EQ2_FREQUENCY",
        "GET_AEF2_EQ3_FREQUENCY",
        "SET_AEF2_REVERB_VOLUME",
        "GET_AEF2_EQ3",
        "GET_AEF2_EQ8",
        "GET_AEF2_EQ_ENABLE",
        "SET_AEF2_ECHO_ENABLE",
        "GET_AEF2_REVERB_TIME",
        "TYPE_GET_VOICE_MODE",
        "SET_AEF2_ECHO_TIME",
        "SET_AEF2_EQ5_FREQUENCY",
        "SET_AEF2_EQ1",
        "GET_AEF2_VOICE_MODE",
        "TYPE_GET_ECHO",
        "GET_AEF2_EQ6",
        "GET_AEF2_EQ2",
        "<init>",
        "()V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final GET_AEF1_REVERB_ENABLE:I = 0xc9

.field private static final GET_AEF1_REVERB_OUT_GAIN:I = 0xcb

.field private static final GET_AEF2_ECHO_ENABLE:I = 0xf3

.field private static final GET_AEF2_ECHO_FEEDBACK:I = 0xfb

.field private static final GET_AEF2_ECHO_GAIN:I = 0xf5

.field private static final GET_AEF2_ECHO_TIME:I = 0xf9

.field private static final GET_AEF2_ECHO_TYPE:I = 0xf7

.field private static final GET_AEF2_EQ1:I = 0xd7

.field private static final GET_AEF2_EQ1_FREQUENCY:I = 0xe9

.field private static final GET_AEF2_EQ2:I = 0xd8

.field private static final GET_AEF2_EQ2_FREQUENCY:I = 0xea

.field private static final GET_AEF2_EQ3:I = 0xd9

.field private static final GET_AEF2_EQ3_FREQUENCY:I = 0xeb

.field private static final GET_AEF2_EQ4:I = 0xda

.field private static final GET_AEF2_EQ4_FREQUENCY:I = 0xec

.field private static final GET_AEF2_EQ5:I = 0xdb

.field private static final GET_AEF2_EQ5_FREQUENCY:I = 0xed

.field private static final GET_AEF2_EQ6:I = 0xdc

.field private static final GET_AEF2_EQ6_FREQUENCY:I = 0xee

.field private static final GET_AEF2_EQ7:I = 0xdd

.field private static final GET_AEF2_EQ7_FREQUENCY:I = 0xef

.field private static final GET_AEF2_EQ8:I = 0xde

.field private static final GET_AEF2_EQ8_FREQUENCY:I = 0xf0

.field private static final GET_AEF2_EQ9:I = 0xdf

.field private static final GET_AEF2_EQ9_FREQUENCY:I = 0xf1

.field private static final GET_AEF2_EQ_ENABLE:I = 0xcd

.field private static final GET_AEF2_REVERB_ENABLE:I = 0xfd

.field private static final GET_AEF2_REVERB_MODE:I = 0xff

.field private static final GET_AEF2_REVERB_TIME:I = 0x103

.field private static final GET_AEF2_REVERB_VOLUME:I = 0x101

.field private static final GET_AEF2_VOICE_MODE:I = 0x105

.field private static final GET_MAX_AEF1_REVERB_VOLUME:I = 0x111

.field private static final GET_MAX_AEF2_REVERB_VOLUME:I = 0x112

.field private static final GET_MAX_MIC_VOLUME:I = 0x110

.field private static final GET_MIC_VOLUME:I = 0x65

.field private static final GET_MIC_VOLUME_ENABLE:I = 0x67

.field private static final GET_MUSIC_VOLUME:I = 0x6b

.field private static final GET_SUPPORT_ADVANCE_EFFECT:I = 0x106

.field private static final GET_SYSTEM_VOLUME:I = 0x69

.field public static final INSTANCE:Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SET_AEF1_REVERB_ENABLE:I = 0xc8

.field private static final SET_AEF1_REVERB_OUT_GAIN:I = 0xca

.field private static final SET_AEF2_ECHO_ENABLE:I = 0xf2

.field private static final SET_AEF2_ECHO_FEEDBACK:I = 0xfa

.field private static final SET_AEF2_ECHO_GAIN:I = 0xf4

.field private static final SET_AEF2_ECHO_TIME:I = 0xf8

.field private static final SET_AEF2_ECHO_TYPE:I = 0xf6

.field private static final SET_AEF2_EQ1:I = 0xce

.field private static final SET_AEF2_EQ1_FREQUENCY:I = 0xe0

.field private static final SET_AEF2_EQ2:I = 0xcf

.field private static final SET_AEF2_EQ2_FREQUENCY:I = 0xe1

.field private static final SET_AEF2_EQ3:I = 0xd0

.field private static final SET_AEF2_EQ3_FREQUENCY:I = 0xe2

.field private static final SET_AEF2_EQ4:I = 0xd1

.field private static final SET_AEF2_EQ4_FREQUENCY:I = 0xe3

.field private static final SET_AEF2_EQ5:I = 0xd2

.field private static final SET_AEF2_EQ5_FREQUENCY:I = 0xe4

.field private static final SET_AEF2_EQ6:I = 0xd3

.field private static final SET_AEF2_EQ6_FREQUENCY:I = 0xe5

.field private static final SET_AEF2_EQ7:I = 0xd4

.field private static final SET_AEF2_EQ7_FREQUENCY:I = 0xe6

.field private static final SET_AEF2_EQ8:I = 0xd5

.field private static final SET_AEF2_EQ8_FREQUENCY:I = 0xe7

.field private static final SET_AEF2_EQ9:I = 0xd6

.field private static final SET_AEF2_EQ9_FREQUENCY:I = 0xe8

.field private static final SET_AEF2_EQ_ENABLE:I = 0xcc

.field private static final SET_AEF2_REVERB_ENABLE:I = 0xfc

.field private static final SET_AEF2_REVERB_MODE:I = 0xfe

.field private static final SET_AEF2_REVERB_TIME:I = 0x102

.field private static final SET_AEF2_REVERB_VOLUME:I = 0x100

.field private static final SET_AEF2_VOICE_MODE:I = 0x104

.field private static final SET_MIC_VOLUME:I = 0x64

.field private static final SET_MIC_VOLUME_ENABLE:I = 0x66

.field private static final SET_MUSIC_VOLUME:I = 0x6a

.field private static final SET_SYSTEM_VOLUME:I = 0x68

.field private static final TAG:Ljava/lang/String; = "AudioEffectProvider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_GET_ECHO:I = 0x6

.field private static final TYPE_GET_ECHO_MAX:I = 0x4

.field private static final TYPE_GET_MIC:I = 0x5

.field private static final TYPE_GET_MIC_MAX:I = 0x3

.field private static final TYPE_GET_REVERB_MODE:I = 0x8

.field private static final TYPE_GET_VOICE_MODE:I = 0xa

.field private static final TYPE_SET_ECHO:I = 0x2

.field private static final TYPE_SET_MIC:I = 0x1

.field private static final TYPE_SET_REVERB_MODE:I = 0x7

.field private static final TYPE_SET_VOICE_MODE:I = 0x9

.field private static final TYPE_SUPPORT_ADVANCE:I = 0xb

.field private static final VOLUME_DOWN:I = 0x10f

.field private static final VOLUME_UP:I = 0x10e

.field private static final volumeAdjustment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;

    invoke-direct {v0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->INSTANCE:Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;

    sget-object v0, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider$volumeAdjustment$2;->INSTANCE:Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider$volumeAdjustment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->volumeAdjustment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->volumeAdjustment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    return-object v0
.end method


# virtual methods
.method public final getValue(I)Landroid/database/Cursor;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "key"

    const-string v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-eq p1, v4, :cond_8

    const/16 v4, 0xb

    if-eq p1, v4, :cond_0

    const/16 v4, 0x105

    if-eq p1, v4, :cond_8

    const/16 v4, 0x106

    if-eq p1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_4

    .line 226
    :sswitch_0
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbTime()I

    move-result v2

    goto/16 :goto_6

    .line 227
    :sswitch_1
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbVolume()I

    move-result v2

    goto/16 :goto_6

    .line 228
    :sswitch_2
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2ReverbEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 229
    :sswitch_3
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoFeedBack()I

    move-result v2

    goto/16 :goto_6

    .line 230
    :sswitch_4
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoTime()I

    move-result v2

    goto/16 :goto_6

    .line 231
    :sswitch_5
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoType()I

    move-result v2

    goto/16 :goto_6

    .line 232
    :sswitch_6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoGain()I

    move-result v2

    goto/16 :goto_6

    .line 233
    :sswitch_7
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2EchoEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 234
    :sswitch_8
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2EQEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 361
    :pswitch_0
    :sswitch_9
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef1ReverbOutGain()I

    move-result v2

    goto/16 :goto_6

    .line 235
    :sswitch_a
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef1ReverbEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 236
    :sswitch_b
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMusicVolume()I

    move-result v2

    goto/16 :goto_6

    .line 237
    :sswitch_c
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getSystemVolume()I

    move-result v2

    goto/16 :goto_6

    .line 238
    :sswitch_d
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isMicVolumeEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 362
    :pswitch_1
    :sswitch_e
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMicVolume()I

    move-result v2

    goto/16 :goto_6

    .line 360
    :sswitch_f
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbMode()I

    move-result v2

    goto/16 :goto_6

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ9()I

    move-result v2

    goto/16 :goto_6

    .line 114
    :pswitch_3
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ8()I

    move-result v2

    goto/16 :goto_6

    .line 115
    :pswitch_4
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ7()I

    move-result v2

    goto/16 :goto_6

    .line 116
    :pswitch_5
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ6()I

    move-result v2

    goto/16 :goto_6

    .line 117
    :pswitch_6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ5()I

    move-result v2

    goto/16 :goto_6

    .line 118
    :pswitch_7
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ4()I

    move-result v2

    goto/16 :goto_6

    .line 119
    :pswitch_8
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ3()I

    move-result v2

    goto/16 :goto_6

    .line 120
    :pswitch_9
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ2()I

    move-result v2

    goto/16 :goto_6

    .line 121
    :pswitch_a
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ1()I

    move-result v2

    goto/16 :goto_6

    .line 104
    :pswitch_b
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ9Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 105
    :pswitch_c
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ8Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 106
    :pswitch_d
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ7Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 107
    :pswitch_e
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ6Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 108
    :pswitch_f
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ5Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 109
    :pswitch_10
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ4Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 110
    :pswitch_11
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ3Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 111
    :pswitch_12
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ2Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 112
    :pswitch_13
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ1Frequency()I

    move-result v2

    goto/16 :goto_6

    .line 362
    :pswitch_14
    const/16 v2, 0x64

    goto/16 :goto_6

    .line 506
    :cond_0
    sget-object v4, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    .line 507
    sget-object v4, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    .line 508
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "version"

    const-string v5, "node"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cat /sys/class/pmkaraoke/"

    const-string v5, "version"

    .line 509
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-static {v4, v3, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/String;ZZ)LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;

    move-result-object v4

    const-string v5, "execCmd(\n                \"cat ${Constant.KO_PATH}$node\",\n                false, true\n            )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget v5, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO00o:I

    if-nez v5, :cond_1

    iget-object v5, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 515
    iget-object v4, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    const-string v5, "value.successMsg"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 516
    :cond_1
    iget-object v5, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 517
    iget-object v4, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v5, "shell get:"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DNodeCommunication"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    const-string v4, ""

    .line 518
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    if-eqz v5, :cond_5

    .line 528
    :goto_2
    move v4, v3

    goto :goto_3

    .line 519
    :cond_5
    sget-object v11, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v5, "  version "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DataRead"

    invoke-virtual {v11, v6, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "."

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 521
    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v2

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "  versionInt "

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DataRead"

    invoke-virtual {v11, v7, v6}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 528
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :goto_3
    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 2
    :cond_6
    :goto_4
    nop

    .line 554
    move v2, v3

    goto :goto_6

    .line 528
    :cond_7
    :goto_5
    goto :goto_6

    .line 529
    :cond_8
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2VoiceMode()I

    move-result v2

    .line 554
    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 555
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 557
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get  keyIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AudioEffectProvider"

    invoke-virtual {v1, v2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_14
        :pswitch_14
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_f
        0x65 -> :sswitch_e
        0x67 -> :sswitch_d
        0x69 -> :sswitch_c
        0x6b -> :sswitch_b
        0xc9 -> :sswitch_a
        0xcb -> :sswitch_9
        0xcd -> :sswitch_8
        0xf3 -> :sswitch_7
        0xf5 -> :sswitch_6
        0xf7 -> :sswitch_5
        0xf9 -> :sswitch_4
        0xfb -> :sswitch_3
        0xfd -> :sswitch_2
        0xff -> :sswitch_f
        0x101 -> :sswitch_1
        0x103 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xd7
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe9
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x110
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final setValue(II)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set  keyIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioEffectProvider"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10f

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 325
    :sswitch_0
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2ReverbTime(I)V

    goto/16 :goto_0

    .line 326
    :sswitch_1
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2ReverbVolume(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_2
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    if-ne p2, v0, :cond_0

    move v1, v0

    nop

    :cond_0
    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2ReverbEnable(Z)V

    goto/16 :goto_0

    .line 328
    :sswitch_3
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EchoFeedBack(I)V

    goto/16 :goto_0

    .line 329
    :sswitch_4
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EchoTime(I)V

    goto/16 :goto_0

    .line 330
    :sswitch_5
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EchoType(I)V

    goto/16 :goto_0

    .line 331
    :sswitch_6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EchoGain(I)V

    goto/16 :goto_0

    .line 332
    :sswitch_7
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    if-ne p2, v0, :cond_1

    move v1, v0

    nop

    :cond_1
    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EchoEnable(Z)V

    goto/16 :goto_0

    .line 333
    :sswitch_8
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    if-ne p2, v0, :cond_2

    move v1, v0

    nop

    :cond_2
    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQEnable(Z)V

    goto/16 :goto_0

    .line 334
    :sswitch_9
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    if-ne p2, v0, :cond_3

    move v1, v0

    nop

    :cond_3
    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef1ReverbEnable(Z)V

    goto/16 :goto_0

    .line 335
    :sswitch_a
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMusicVolume(I)V

    goto/16 :goto_0

    .line 336
    :sswitch_b
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setSystemVolume(I)V

    goto/16 :goto_0

    .line 337
    :sswitch_c
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    if-ne p2, v0, :cond_4

    move v1, v0

    nop

    :cond_4
    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    goto/16 :goto_0

    .line 538
    :sswitch_d
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2VoiceMode(I)V

    goto/16 :goto_0

    .line 539
    :sswitch_e
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2ReverbMode(I)V

    goto/16 :goto_0

    .line 160
    :pswitch_0
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ9(I)V

    goto/16 :goto_0

    .line 161
    :pswitch_1
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ8(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ7(I)V

    goto/16 :goto_0

    .line 163
    :pswitch_3
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ6(I)V

    goto/16 :goto_0

    .line 164
    :pswitch_4
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ5(I)V

    goto/16 :goto_0

    .line 165
    :pswitch_5
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ4(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ3(I)V

    goto/16 :goto_0

    .line 167
    :pswitch_7
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ2(I)V

    goto/16 :goto_0

    .line 168
    :pswitch_8
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ1(I)V

    goto/16 :goto_0

    .line 151
    :pswitch_9
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ9Frequency(I)V

    goto :goto_0

    .line 152
    :pswitch_a
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ8Frequency(I)V

    goto :goto_0

    .line 153
    :pswitch_b
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ7Frequency(I)V

    goto :goto_0

    .line 154
    :pswitch_c
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ6Frequency(I)V

    goto :goto_0

    .line 155
    :pswitch_d
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ5Frequency(I)V

    goto :goto_0

    .line 156
    :pswitch_e
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ4Frequency(I)V

    goto :goto_0

    .line 157
    :pswitch_f
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ3Frequency(I)V

    goto :goto_0

    .line 158
    :pswitch_10
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ2Frequency(I)V

    goto :goto_0

    .line 159
    :pswitch_11
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2EQ1Frequency(I)V

    goto :goto_0

    .line 570
    :cond_5
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->volumeDown(I)V

    goto :goto_0

    .line 571
    :cond_6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->volumeUp(I)V

    goto :goto_0

    .line 572
    :cond_7
    :sswitch_f
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef1ReverbOutGain(I)V

    goto :goto_0

    .line 573
    :cond_8
    :sswitch_10
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/AudioEffectProvider;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolume(I)V

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_e
        0x9 -> :sswitch_d
        0x64 -> :sswitch_10
        0x66 -> :sswitch_c
        0x68 -> :sswitch_b
        0x6a -> :sswitch_a
        0xc8 -> :sswitch_9
        0xca -> :sswitch_f
        0xcc -> :sswitch_8
        0xf2 -> :sswitch_7
        0xf4 -> :sswitch_6
        0xf6 -> :sswitch_5
        0xf8 -> :sswitch_4
        0xfa -> :sswitch_3
        0xfc -> :sswitch_2
        0xfe -> :sswitch_e
        0x100 -> :sswitch_1
        0x102 -> :sswitch_0
        0x104 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xce
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
