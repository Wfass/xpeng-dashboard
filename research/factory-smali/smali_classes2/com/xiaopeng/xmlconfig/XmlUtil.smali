.class public Lcom/xiaopeng/xmlconfig/XmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "XmlUtil"

.field private static final LOG_LEVEL_D:I = 0x1

.field private static final LOG_LEVEL_E:I = 0x4

.field private static final LOG_LEVEL_F:I = 0x5

.field private static final LOG_LEVEL_I:I = 0x2

.field private static final LOG_LEVEL_V:I = 0x0

.field private static final LOG_LEVEL_W:I = 0x3

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "XmlData"

    sput-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .line 68
    const-string v0, ""

    .line 70
    .local v0, "logMessage":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    const-string p0, " "

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    :cond_2
    const-string p1, " "

    .line 80
    :cond_3
    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    :cond_4
    const-string p2, " "

    .line 84
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public static log_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public static log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static log_e(Ljava/lang/Exception;)V
    .locals 5
    .param p0, "e"    # Ljava/lang/Exception;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 91
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    sget-object v1, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNNING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    sget-object v2, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNNING:     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static log_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public static log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static log_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static log_v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public static log_w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static log_w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static log_wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {p0, p1, v1, v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static log_wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, p1, p2, v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->getLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
