.class public interface abstract Lcom/xiaopeng/lib/HttpInitEventListener;
.super Ljava/lang/Object;
.source "HttpInitEventListener.java"


# static fields
.field public static final CODE_FAILED_INIT_DEFAULT_KEYSTORE:I = 0x1772

.field public static final CODE_FAILED_INIT_KEYSTORE_SSL_FACTORY:I = 0x1773

.field public static final CODE_FAILED_INIT_KEYSTORE_TRUST_MGR:I = 0x1774

.field public static final CODE_FAILED_INIT_LOCAL_SSL_FACTORY:I = 0x1776

.field public static final CODE_FAILED_INIT_LOCAL_TRUST_MGR:I = 0x1775

.field public static final CODE_FAILED_INIT_XMART_KEYSTORE:I = 0x1771

.field public static final CODE_NOT_INDIV:I = 0x1770


# virtual methods
.method public abstract onInitException(ILjava/lang/String;)V
.end method
