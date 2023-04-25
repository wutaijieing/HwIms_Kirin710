.class public Lcom/android/internal/telephony/HwChrServiceManagerImpl;
.super Ljava/lang/Object;
.source "HwChrServiceManagerImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/HwChrServiceManager;


# static fields
.field private static mInstance:Lcom/android/internal/telephony/HwChrServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/internal/telephony/HwChrServiceManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/HwChrServiceManagerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwChrServiceManagerImpl;->mInstance:Lcom/android/internal/telephony/HwChrServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/HwChrServiceManager;
    .locals 1

    .line 10
    sget-object v0, Lcom/android/internal/telephony/HwChrServiceManagerImpl;->mInstance:Lcom/android/internal/telephony/HwChrServiceManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 14
    return-void
.end method

.method public reportCallException(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 17
    return-void
.end method
