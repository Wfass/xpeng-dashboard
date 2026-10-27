.class public Lcom/tencent/mars/xlog/Xlog;
.super Ljava/lang/Object;
.source "Xlog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static native appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native logWrite(Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;Ljava/lang/String;)V
.end method

.method public static native logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public static native setAppenderMode(I)V
.end method

.method public static native setConsoleLogOpen(Z)V
.end method

.method public static native setErrLogOpen(Z)V
.end method

.method public static native setLogLevel(I)V
.end method

.method public static native setMaxAliveTime(J)V
.end method

.method public static native setMaxFileSize(J)V
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 11

    .line 43
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/tencent/mars/xlog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method public native appenderClose()V
.end method

.method public native appenderFlush(Z)V
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 11

    .line 48
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/tencent/mars/xlog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 11

    .line 53
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/tencent/mars/xlog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 11

    .line 58
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/tencent/mars/xlog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 11

    .line 63
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/tencent/mars/xlog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method public native getLogLevel()I
.end method
