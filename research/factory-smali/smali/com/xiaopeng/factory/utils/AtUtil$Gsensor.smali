.class public Lcom/xiaopeng/factory/utils/AtUtil$Gsensor;
.super Ljava/lang/Object;
.source "AtUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/AtUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gsensor"
.end annotation


# static fields
.field public static final CMD_NAME:Ljava/lang/String; = "GSENSOR"

.field public static final GETTING_OFFSET:I = 0x2

.field public static final PENDING:I = 0x0

.field public static final READING_STATUS:I = 0x1

.field public static final SAMPLE_DATA_COUNT:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
