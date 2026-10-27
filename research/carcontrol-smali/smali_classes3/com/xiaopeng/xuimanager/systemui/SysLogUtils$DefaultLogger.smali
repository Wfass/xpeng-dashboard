.class Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$DefaultLogger;
.super Ljava/lang/Object;
.source "SysLogUtils.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultLogger"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p4, 0x2

    if-eq p1, p4, :cond_4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const/4 p4, 0x5

    if-eq p1, p4, :cond_1

    const/4 p4, 0x6

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_4
    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
