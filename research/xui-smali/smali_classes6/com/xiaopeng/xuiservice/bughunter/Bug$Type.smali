.class public interface abstract Lcom/xiaopeng/xuiservice/bughunter/Bug$Type;
.super Ljava/lang/Object;
.source "Bug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bughunter/Bug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Type"
.end annotation


# static fields
.field public static final EXCEPTION_TYPE_ANR:I = 0x2

.field public static final EXCEPTION_TYPE_CRASH:I = 0x1

.field public static final ICM_CRASH:I = 0x5

.field public static final KERNEL_PANIC:I = 0x4

.field public static final QNX_PROCESS_CRASH:I = 0x7

.field public static final QNX_REBOOT:I = 0x6

.field public static final SYSTEM_SERVER_FAULT:I = 0x3
